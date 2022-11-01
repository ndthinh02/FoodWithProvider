import 'package:api_food/controller/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class IconText extends StatefulWidget {
  IconData iconData;
  String text;
  Color iconColor;

  IconText({
    super.key,
    required this.iconData,
    required this.text,
    required this.iconColor,
  });

  @override
  State<IconText> createState() => _IconTextState();
}

class _IconTextState extends State<IconText> {
  Controller get controller => context.read<Controller>();
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        widget.iconData,
        color: widget.iconColor,
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        widget.text,
        style: const TextStyle(),
      ),
      const SizedBox(
        width: 10,
      ),
    ]);
  }
}
