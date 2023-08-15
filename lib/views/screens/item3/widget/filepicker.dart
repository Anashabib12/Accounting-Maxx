import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class comunicationFileSelectionButton extends StatefulWidget {
  @override
  _comunicationFileSelectionButtonState createState() =>
      _comunicationFileSelectionButtonState();
}

class _comunicationFileSelectionButtonState
    extends State<comunicationFileSelectionButton> {
  String? _filePath; // To store the selected file name

  Future<void> _selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        String fullPath = result.files.single.path!;
        // Get the file name from the full path
        String fileName = fullPath.split('/').last;
        _filePath = fileName;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20),
      child: Align(
        
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: _selectFile,
              child: Text('Select File'),
            ),
            SizedBox(height: 16),
            if (_filePath != null)
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 139, 198, 225),
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://corekarachi.pk/wp-content/uploads/2019/05/member.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      
                      '$_filePath',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}





// this file is perfect
// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
// // import 'package:file_picker/file_picker.dart';

// class CommunicationFileSelectionButton extends StatefulWidget {
//   @override
//   _CommunicationFileSelectionButtonState createState() =>
//       _CommunicationFileSelectionButtonState();
// }

// class _CommunicationFileSelectionButtonState
//     extends State<CommunicationFileSelectionButton> {
//   String? _filePath; // To store the selected file name

//   Future<void> _selectFile() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles();

//     if (result != null) {
//       setState(() {
//         String fullPath = result.files.single.path!;
//         // Get the file name from the full path
//         String fileName = fullPath.split('/').last;
//         _filePath = fileName;
//       });
//     }
//   }

//   Future<void> _showSelectedFile() async {
//     if (_filePath != null) {
//       // Show the selected file in a dialog popup
//       await showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('Selected File'),
//             content: Text('$_filePath'),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text('Close'),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.centerLeft,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ElevatedButton(
//             onPressed: _selectFile,
//             child: Text('Select File'),
//           ),
//           SizedBox(height: 16),
//           if (_filePath != null)
//             ElevatedButton(
//               onPressed: _showSelectedFile,
//               child: Text('Show Selected File'),
//             ),
//         ],
//       ),
//     );
//   }
// }






// import 'dart:html';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';

// class CommunicationFileSelectionButton extends StatefulWidget {
//   @override
//   _CommunicationFileSelectionButtonState createState() =>
//       _CommunicationFileSelectionButtonState();
// }

// class _CommunicationFileSelectionButtonState
//     extends State<CommunicationFileSelectionButton> {
//   String? _filePath; // To store the selected file path

//   Future<void> _selectFile() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles();

//     if (result != null) {
//       setState(() {
//         String fullPath = result.files.single.path!;
//         // Get the file name from the full path
//         String fileName = fullPath.split('/').last;
//         _filePath = fileName;
//       });
//     }
//   }

//   Future<void> _showImageDialog() async {
//     if (_filePath != null && _isImageFile(_filePath!)) {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             content: Image.file(
//               File(_filePath! as List<Object>) as File,
//               height: 150,
//               width: 150,
//             ),
//           );
//         },
//       );
//     }
//   }

//   bool _isImageFile(String fileName) {
//     List<String> imageExtensions = ['.jpg', '.jpeg', '.png', '.gif', '.webp'];
//     String extension = fileName.toLowerCase().split('.').last;
//     return imageExtensions.contains('.$extension');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.centerLeft,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               _selectFile().then((_) => _showImageDialog());
//             },
//             child: Text('Select File'),
//           ),
//           SizedBox(height: 16),
//           if (_filePath != null)
//             Text(
//               'Selected File: $_filePath',
//               style: TextStyle(fontSize: 16),
//             ),
//         ],
//       ),
//     );
//   }
// }































































// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('File Picker Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: comunicationFileSelectionButton(),
//       ),
//     ),
//   ));
// }


// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
// import 'dart:html' as html;

// class CommunicationFileSelectionButton extends StatefulWidget {
//   @override
//   _CommunicationFileSelectionButtonState createState() =>
//       _CommunicationFileSelectionButtonState();
// }

// class _CommunicationFileSelectionButtonState
//     extends State<CommunicationFileSelectionButton> {
//   String? _filePath; // To store the selected file name

//   Future<void> _selectFile() async {
//     FilePickerResult? result;

//     // Check if the app is running on web or desktop
//     if (kIsWeb) {
//       final html.FileUploadInputElement input = html.FileUploadInputElement();
//       // For Flutter web, use InputElement to select files
//       input.click();
//       input.onChange.listen((event) {
//         final files = input.files;
//         if (files != null && files.isNotEmpty) {
//           final file = files[0];
//           final fileName = file.name;
//           setState(() {
//             _filePath = fileName;
//           });
//         }
//       });
//     } 
//     else {
//       // For Android and iOS, use FilePicker plugin
//       result = await FilePicker.platform.pickFiles();
//       if (result != null) {
//         String fullPath = result.files.single.path!;
//         String fileName = fullPath.split('/').last;
//         setState(() {
//           _filePath = fileName;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.centerLeft,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ElevatedButton(
//             onPressed: _selectFile,
//             child: Text('Select File'),
//           ),
//           SizedBox(height: 16),
//           if (_filePath != null)
//             Text(
//               'Selected File: $_filePath',
//               style: TextStyle(fontSize: 16),
//             ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('File Picker Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: CommunicationFileSelectionButton(),
//       ),
//     ),
//   ));
// }
