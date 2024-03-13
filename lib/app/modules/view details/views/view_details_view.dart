import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/constant/fonts.dart';

import '../controllers/view_details_controller.dart';

class ViewDetailsView extends GetView<ViewDetailsController> {
  const ViewDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Requests'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: controller.getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const Center(child: Text('No Data found'));
                } else {
                  return buildListView(snapshot);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  ListView buildListView(AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
    return ListView.builder(
      itemCount: snapshot.data!.docs.length,
      itemBuilder: (context, index) {
        final document = snapshot.data!.docs[index];
        final name = document['name'];
        final description = document['description'];
        final email = document['email'];
        final phone = document['phone'];

        return Card(
          margin: const EdgeInsets.all(10),
          child: ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(
              '$name',
              style: CustomFontStyle.heading,
            ),
            subtitle: Text(
              '$description',
              style: CustomFontStyle.normal,
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('$email', style: CustomFontStyle.normal),
                Text('$phone', style: CustomFontStyle.normal),
              ],
            ),
          ),
        );
      },
    );
  }
}