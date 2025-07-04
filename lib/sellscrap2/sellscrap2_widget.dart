import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sellscrap2_model.dart';
export 'sellscrap2_model.dart';

/// Sell Scrap Form
class Sellscrap2Widget extends StatefulWidget {
  const Sellscrap2Widget({super.key});

  static String routeName = 'sellscrap2';
  static String routePath = '/sellscrap2';

  @override
  State<Sellscrap2Widget> createState() => _Sellscrap2WidgetState();
}

class _Sellscrap2WidgetState extends State<Sellscrap2Widget> {
  late Sellscrap2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Sellscrap2Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
      ),
    );
  }
}
