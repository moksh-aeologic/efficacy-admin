import 'package:efficacy_admin/themes/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

showBottomSheetWithData(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))),
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox.square(
                dimension: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 5,
                height: 2,
                color: Colors.black.withAlpha(50),
              ),
              const SizedBox.square(
                dimension: 15,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    const SizedBox.square(
                      dimension: 15,
                    ),
                    const SizedBox.square(
                      dimension: 15,
                    ),
                    const SizedBox.square(
                      dimension: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.person),
                        Icon(Icons.person),
                        Icon(Icons.person),
                      ],
                    ),
                    const SizedBox.square(
                      dimension: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'dummy data heading',
                        style: TextStyle(
                            fontSize: 30, color: AppColorLight.primary),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suscipit sed augue quam amet, sed gravida
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suscipit sed augue quam amet, sed gravida.''',
                        style: TextStyle(
                            fontSize: 20, color: AppColorLight.primary),
                      ),
                    ),
                    const SizedBox.square(
                      dimension: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            height: 44,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Theme.of(context).primaryColor),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(FontAwesomeIcons.google,
                                        size: 16,
                                        color: AppColorLight.onPrimary),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Google Signin",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              color: AppColorLight.onPrimary),
                                    )
                                  ],
                                ))),
                        SizedBox(
                            height: 44,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Theme.of(context).primaryColor),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(FontAwesomeIcons.facebook,
                                        size: 16,
                                        color: AppColorLight.onPrimary),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Facebook login",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              color: AppColorLight.onPrimary),
                                    )
                                  ],
                                )))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
