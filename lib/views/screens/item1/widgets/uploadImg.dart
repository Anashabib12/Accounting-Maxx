import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';

class UloadImgWidget extends StatefulWidget {
  const UloadImgWidget({super.key});

  @override
  State<UloadImgWidget> createState() => _UloadImgWidgetState();
}

class _UloadImgWidgetState extends State<UloadImgWidget> {
  File? _imageFile; // To store the selected image file

  Future<void> _selectImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _imageFile = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1.2,
      child: Stack(
        children: [
          if (_imageFile != null)
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 139, 198, 225),
              radius: 64,
              backgroundImage: FileImage(_imageFile!),
            )
          else
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 139, 198, 225),
              radius: 64,
              backgroundImage: NetworkImage(
                  'https://corekarachi.pk/wp-content/uploads/2019/05/member.png'),
            ),
          Positioned(
            child: IconButton(
              onPressed: _selectImage,
              icon: Icon(Icons.add_a_photo),
            ),
            bottom: -10,
            left: 80,
          )
        ],
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Image Picker Example'),
//       ),
//       body: Center(
//         child: UloadImgWidget(),
//       ),
//     ),
//   ));
// }
