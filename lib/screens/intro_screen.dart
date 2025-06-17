import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'main_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int _currentPage = 0;
  double _dragStartX = 0.0;

  final List<IntroItem> _introItems = [
    IntroItem(
      image: 'assets/images/intro_1.png',
      title: 'Pioneering a \n Greener Tomorrow',
      description:
          'Recyclekaro stands as a trailblazing force seamlessly blending social responsibility with commercial ingenuity',
    ),
    IntroItem(
      image: 'assets/images/intro_2.png',
      title: 'Orchestrating Sustainability Across Every Frontier',
      description:
          'We don\'t just recycle; We craft melodies \n of change that resonate for \n generations to come',
    ),
    IntroItem(
      image: 'assets/images/intro_3.png',
      title: 'Our Strategy \n to Success',
      description:
          'At Recyclekaro, our strategy to success is deeply rooted in staying at forefront of Progress Armed with the latest technology',
    ),
  ];

  void _navigateToMainScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainScreen()),
    );
  }

  void _nextPage() {
    if (_currentPage < _introItems.length - 1) {
      setState(() {
        _currentPage++;
      });
    } else {
      _navigateToMainScreen();
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
      });
    }
  }

  void _goToPage(int page) {
    if (page >= 0 && page < _introItems.length) {
      setState(() {
        _currentPage = page;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: statusBarHeight),
        child: Stack(
          children: [
            Column(
              children: [
                // Intro content
                Expanded(
                  child: GestureDetector(
                    onHorizontalDragStart: (details) {
                      _dragStartX = details.globalPosition.dx;
                    },
                    onHorizontalDragEnd: (details) {
                      final dragEndX = details.globalPosition.dx;
                      final dragDistance = dragEndX - _dragStartX;

                      // Determine if the drag was significant enough
                      if (dragDistance.abs() > 50) {
                        if (dragDistance > 0 && _currentPage > 0) {
                          // Swiped right and not on first page
                          _previousPage();
                        } else if (dragDistance < 0 &&
                            _currentPage < _introItems.length - 1) {
                          // Swiped left and not on last page
                          _nextPage();
                        }
                      }
                    },
                    child: Column(
                      children: [
                        // Intro image
                        SizedBox(
                          width: screenSize.width,
                          height: screenSize.height * 0.58,
                          child: Image.asset(
                            _introItems[_currentPage].image,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 12), // 20% of screen height spacing
                        // Title
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                            _introItems[_currentPage].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              height: 1.0,
                              letterSpacing: 0,
                              color: AppTheme.primaryBlue,
                            ),
                          ),
                        ),

                        // Description
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                            _introItems[_currentPage].description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Neue Haas Grotesk Text Pro',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.5, // 24px line height
                              letterSpacing: 0,
                              color: AppTheme.textLight,
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 12), // 12px spacing below description
                        // Carousel indicators
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            _introItems.length,
                            (index) => GestureDetector(
                              onTap: () => _goToPage(index),
                              child: Container(
                                width: _currentPage == index ? 24 : 8,
                                height: 8,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: _currentPage == index
                                      ? AppTheme.primaryGreen
                                      : AppTheme.textLight2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Static navigation buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Skip button
                      TextButton(
                        onPressed: _navigateToMainScreen,
                        child: Text(
                          'Skip',
                          style: const TextStyle(
                            fontFamily: 'Neue Haas Grotesk Text Pro',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            height: 1.0,
                            letterSpacing: 0,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationThickness: 0,
                            color: AppTheme.primaryBlue,
                          ),
                        ),
                      ),
                      // Next/Finish button
                      InkWell(
                        onTap: _nextPage,
                        child: Image.asset(
                          'assets/images/intro_next.png',
                          width: 32, // Adjust width as needed
                          height: 32, // Adjust height as needed
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IntroItem {
  final String image;
  final String title;
  final String description;

  IntroItem({
    required this.image,
    required this.title,
    required this.description,
  });
}
