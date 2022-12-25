import 'package:ae_boards/presentation/home/pages/widgets/upload_widget.dart';
import 'package:flutter/material.dart';

class UploadTapWidget extends StatelessWidget {
  const UploadTapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(
              top: 10,
              bottom: 24,
            ),
            width: 125,
            child: ElevatedButton(
              onPressed: () {
              //  AutoRouter.of(context).push(const AddRequestPageRoute());
              },
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(const Color(0xff2C2626))),
              child: const Icon(Icons.add),
            )),
        ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder:(context,index){
          return const UploadWidget();
        } )
      ],
    );
  }
}
