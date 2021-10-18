// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DropDownSearch extends StatefulWidget {
  const DropDownSearch({Key? key}) : super(key: key);

  @override
  _DropDownSearchState createState() => _DropDownSearchState();
}

class _DropDownSearchState extends State<DropDownSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
            ),
            DropdownSearch<String>(
                mode: Mode.MENU,
                showSelectedItems: true,
                showSearchBox: true,
                items: const [
                  "Brazil",
                  "Italia (Disabled)",
                  "Tunisia",
                  'Canada'
                ],
                dropdownSearchDecoration: const InputDecoration(
                    labelText: "Menu mode", hintText: "country in menu mode"),
                popupItemDisabled: (String s) => s.startsWith('I'),
                onChanged: print,
                selectedItem: "Brazil"),
            Container(
              padding: const EdgeInsets.all(20),
            ),
            DropdownSearch<String>.multiSelection(
                mode: Mode.MENU,
                showSelectedItems: true,
                showSearchBox: true,
                items: const [
                  "Brazil",
                  "Italia (Disabled)",
                  "Tunisia",
                  'Canada'
                ],
                dropdownSearchDecoration: const InputDecoration(
                    labelText: "Menu mode", hintText: "country in menu mode"),
                popupItemDisabled: (String s) => s.startsWith('I'),
                onChange: print,
                selectedItems: const ["Brazil"]),
            Container(
              padding: const EdgeInsets.all(20),
            ),
            DropdownSearch(
              items: const ["Brazil", "France", "Tunisia", "Canada"],
              dropdownSearchDecoration: const InputDecoration(
                labelText: "Country",
              ),
              showSearchBox: true,
              onChanged: print,
              selectedItem: "Tunisia",
              validator: (item) {
                if (item == null) {
                  return "Required field";
                } else if (item == "Brazil") {
                  return "Invalid item";
                } else {
                  return null;
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
