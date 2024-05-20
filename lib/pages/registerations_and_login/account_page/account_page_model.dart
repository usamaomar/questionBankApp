import '/flutter_flow/flutter_flow_util.dart';
import 'account_page_widget.dart' show AccountPageWidget;
import 'package:flutter/material.dart';

class AccountPageModel extends FlutterFlowModel<AccountPageWidget> {
  ///  Local state fields for this page.

  List<String> listOfItems = [
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World'
  ];
  void addToListOfItems(String item) => listOfItems.add(item);
  void removeFromListOfItems(String item) => listOfItems.remove(item);
  void removeAtIndexFromListOfItems(int index) => listOfItems.removeAt(index);
  void insertAtIndexInListOfItems(int index, String item) =>
      listOfItems.insert(index, item);
  void updateListOfItemsAtIndex(int index, Function(String) updateFn) =>
      listOfItems[index] = updateFn(listOfItems[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
