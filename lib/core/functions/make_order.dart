import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

Future<bool> addDataToOrdersCollection(
  List<Map<String, dynamic>> newData,
  String comment,
  String name,
  String phoneNumber,
  int total,
) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  try {
    CollectionReference ordersRef = firestore.collection('orders');

    await ordersRef.add(
      {
        'data': newData,
        'name': name,
        'phoneNumber': phoneNumber,
        'status': 'Не обработан',
        'comment': comment,
        'timestamp': DateTime.now().toString(),
        'total': total,
      },
    );

    if (kDebugMode) {
      print('Field newOrder deleted successfully.');
      print('Data added to orders collection successfully');
    }
    return true;
  } catch (e) {
    if (kDebugMode) {
      print('Error adding data to orders collection: $e');
    }
    return false;
  }
}
