import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TextFieldSearchWidget extends StatefulWidget {
  const TextFieldSearchWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldSearchWidget> createState() => _TextFieldSearchWidgetState();
}

class _TextFieldSearchWidgetState extends State<TextFieldSearchWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffFFE2E2),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
          filled: true,
            fillColor: Colors.white,
            labelText: 'search'.tr(),
            hintText: 'search'.tr(),
            focusedBorder:  UnderlineInputBorder(borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color:Theme.of(context).primaryColor,
              ),
            ),
            enabledBorder:  UnderlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:const BorderSide(
                color:  Color(0xffF5F5F5),
              ),
            ),
            errorBorder:UnderlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ) ,
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ) ,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _controller.clear();
                  });
                },
                icon: const Icon(Icons.clear))),
      ),
    );
  }
}
