import 'package:flutter/material.dart';

class CustomLayoutBuilder extends StatelessWidget {
  final Widget child;
  CustomLayoutBuilder({@required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
                minWidth: viewportConstraints.maxWidth),
            child: IntrinsicHeight(
              child: child,
            ),
          ),
        );
      },
    );
  }
}
