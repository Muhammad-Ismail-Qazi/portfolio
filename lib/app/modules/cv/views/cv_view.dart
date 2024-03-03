import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/widgets/appBar/appBar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../controllers/cv_controller.dart';

class CvView extends GetView<CvController> {
  const CvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'CV',
        ),
        body: Expanded(
            child:
                SfPdfViewer.asset('assets/Muhammad Ismail Flutter Dev.pdf')));
  }
}