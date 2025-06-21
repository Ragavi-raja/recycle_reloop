import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'intro1_model.dart';
export 'intro1_model.dart';

class Intro1Widget extends StatefulWidget {
  const Intro1Widget({super.key});

  @override
  State<Intro1Widget> createState() => _Intro1WidgetState();
}

class _Intro1WidgetState extends State<Intro1Widget> {
  late Intro1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Intro1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        'assets/images/Group_2609093.png',
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 5.12,
        fit: BoxFit.cover,
      ),
    );
  }
}
