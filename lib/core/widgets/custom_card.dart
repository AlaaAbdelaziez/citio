import 'package:city/core/utils/variables.dart';
import 'package:city/models/request.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.request,
    Key? key,
  }) : super(key: key);
  Request request;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(6, 0, 6, 6),
      surfaceTintColor: MyColors.gray,
      //shadowColor: MyColors.themecolor,
      elevation: 2,
      child: ListTile(
        title: Text(request.serviceName),
        subtitle: Text(
            '${request.requestStatus}\n${request.responseStatus}\n${request.responseText}\n${request.requestDate}'),
      ),
    );
  }
}
