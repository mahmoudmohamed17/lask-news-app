import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lask_news_app/core/extensions/navigation_extension.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/core/widgets/custom_auth_button.dart';
import 'package:lask_news_app/core/widgets/custom_text_form_field.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  File? _imageFile;
  late ImagePicker _imagePicker;
  @override
  void initState() {
    _imagePicker = ImagePicker();
    super.initState();
  }

  Future<void> _pickImage() async {
    final XFile? image =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _imageFile = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: _imageFile == null
                  ? DottedBorder(
                      borderType: BorderType.Circle,
                      strokeWidth: 2,
                      dashPattern: [6, 3],
                      color: Colors.grey,
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ))
                  : CircleAvatar(
                      radius: 60,
                      backgroundImage: FileImage(_imageFile!),
                    ),
            ),
            verticalSpace(32),
            Text(
              'Create Account',
              style: Styles.bold40,
              textAlign: TextAlign.center,
            ),
            verticalSpace(32),
            CustomTextFormField(hintText: 'Name'),
            verticalSpace(16),
            CustomTextFormField(hintText: 'Email'),
            verticalSpace(16),
            CustomTextFormField(hintText: 'Password'),
            verticalSpace(16),
            CustomAuthButton(
              label: 'Continue',
              onPressed: () {
                context.pushNamed(Routes.signupView);
              },
            ),
            verticalSpace(48),
          ],
        ),
      ),
    );
  }
}
