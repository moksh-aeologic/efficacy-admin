import 'package:efficacy_admin/themes/appcolor.dart';
import 'package:flutter/material.dart';

showCustomBottomSheetWithDeleteAndEditButtons(
    {required BuildContext context,
    required Function() onDeleteTap,
    required Function() onEditTap
    }) {
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))),
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox.square(
              dimension: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 5,
              height: 2,
              color: Colors.black.withAlpha(150),
            ),
            const SizedBox.square(
              dimension: 15,
            ),
            ListTile(
              leading: Icon(
                Icons.delete,
                color: AppColorLight.primary,
              ),
              title: Text(
                'Delete',
                style: TextStyle(color: AppColorLight.primary),
              ),
              onTap: () => onDeleteTap(),
            ),
            ListTile(
              leading: Icon(
                Icons.edit,
                color: AppColorLight.primary,
              ),
              title: Text(
                'Edit',
                style: TextStyle(color: AppColorLight.primary),
              ),
              onTap: () {
                onEditTap();
              },
            ),
          ],
        );
      });
}
