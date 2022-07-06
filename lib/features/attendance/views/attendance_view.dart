import 'package:classapp/helpers/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AttendanceView extends StatefulWidget {
  const AttendanceView({Key? key}) : super(key: key);

  @override
  State<AttendanceView> createState() => _AttendanceViewState();
}

class _AttendanceViewState extends State<AttendanceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Attendance"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    builder: (context) {
                      return SizedBox(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              onTap: () async {
                                ImagePickerHelper()
                                    .pickImage(ImageSource.camera);
                              },
                              leading: Icon(Icons.camera),
                              title: Text("Camera"),
                            ),
                            ListTile(
                              onTap: () async {
                                ImagePickerHelper()
                                    .pickImage(ImageSource.gallery);
                                // picker.pickImage(source: ImageSource.gallery);
                              },
                              leading: Icon(Icons.image_sharp),
                              title: Text("Gallery"),
                            )
                          ],
                        ),
                        // height: 200,

                        // decoration: BoxDecoration(
                        //     color: Colors.blue,
                        //     borderRadius: BorderRadius.only(
                        //         topLeft: Radius.circular(100),
                        //         topRight: Radius.circular(100))),
                      );
                    });
              },
              child: const Text("pick an image")),
        ],
      ),
    );
  }
}
