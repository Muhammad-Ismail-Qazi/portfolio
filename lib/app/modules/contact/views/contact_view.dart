import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/constant/fonts.dart';
import 'package:portfolio/app/constant/spaces.dart';
import 'package:portfolio/app/modules/contact/controllers/contact_controller.dart';
import 'package:portfolio/app/widgets/drawer.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/textField.dart';

class ContactView extends StatefulWidget {
  const ContactView({required Key key}) : super(key: key);

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  ContactController contactController = Get.put(ContactController());

  @override
  void initState() {
    super.initState();
    // Delayed execution of bottom sheet after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Get.bottomSheet(
          isDismissible: false,
          SizedBox(
            height: 10 * 8.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spaces.y3,
                    CustomTextField(
                      textFieldController: contactController.nameController,
                      hint: 'Name',
                    ),
                    Spaces.y3,
                    CustomTextField(
                      textFieldController: contactController.emailController,
                      hint: 'Email',
                    ),
                    Spaces.y3,
                    CustomTextField(
                      textFieldController: contactController.phoneController,
                      hint: 'phone',
                    ),
                    Spaces.y3,
                    CustomTextField(
                      textFieldController:
                          contactController.descriptionController,
                      hint: 'Description',
                      maxLine: null,
                    ),
                    Spaces.y3,
                    ElevatedButton(
                        onPressed: () => contactController.sendData(),
                        child: Text(
                          "Save",
                          style: CustomFontStyle.button,
                        ))
                  ],
                ),
              ),
            ),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact me'),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          Center(
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                buildTypewriterAnimatedText("We're here for you (:"),
                buildTypewriterAnimatedText("Please! feel free to contact us"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TypewriterAnimatedText buildTypewriterAnimatedText(String text) {
    return TypewriterAnimatedText(
      text,
      textStyle: CustomFontStyle.heading,
      speed: const Duration(milliseconds: 100),
    );
  }
}