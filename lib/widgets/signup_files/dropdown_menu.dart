import 'package:cmApp/providers/dropDownItem_provider.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:dropdown_search/dropdown_search.dart';

/// Provides a [DropdownMenu]  of given type and values

class DropdownMenu extends StatelessWidget {
  final Size deviceSize;
  final Map<String, String> adminCredentials;
  final List<String> itemList;
  final String itemType;
  DropdownMenu(
      {@required this.deviceSize,
      @required this.adminCredentials,
      @required this.itemList,
      @required this.itemType});
  @override
  // _DropdownMenuState createState() => _DropdownMenuState();

// class _DropdownMenuState extends State<DropdownMenu> {
  // String _dropDownValue;
  // List<String> _itemList;
  // @override
  // void initState() {
  //   _itemList = widget.itemList;
  //   widget.adminCredentials[widget.itemType] = null;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11, top: 11),
      child: DropdownSearch<String>(
          mode: Mode.MENU,
          showSelectedItem: true,
          items: itemList,
          label: itemType,
          hint: itemType,
          popupItemDisabled: null,
          onChanged: (value) {
            adminCredentials[itemType] = value;
             if (itemType == 'club')
                      adminCredentials['clubId'] =
                          Provider.of<DropdownItems>(context, listen: false)
                              .getClubIdByName(value);
            print(value);
          },
          selectedItem: 'Select $itemType'),
    );
  }
}
