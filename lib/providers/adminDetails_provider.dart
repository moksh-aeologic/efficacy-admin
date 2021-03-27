import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/adminProfile.dart';

class AdminProvider with ChangeNotifier {
  //static AdminProfile _adminProfile;
  static String _clubId;
  static String _clubName;
  static AdminProfile _adminData;

  AdminProfile _admin(DocumentSnapshot adminData) {
    if (clubId == null) {
      _clubId = adminData['clubId'].toString();
      _clubName = adminData['clubName'].toString();
      notifyListeners();
    }
    _adminData = AdminProfile(
      name: adminData['adminName'].toString(),
      branch: adminData['branch'].toString(),
      clubName: adminData['clubName'].toString(),
      email: adminData['email'].toString(),
      fb: adminData['fb'].toString(),
      linkedin: adminData['linkedin'].toString(),
    );
    return _adminData;
  }

  Stream<AdminProfile> get getAdminProfile {
    final Stream<DocumentSnapshot> adminSnapshot = (FirebaseAuth.instance.currentUser.uid != null)
        ? FirebaseFirestore.instance
            .collection('admins')
            .doc(FirebaseAuth.instance.currentUser.uid)
            .snapshots()
        : null;
    if (adminSnapshot == null) {
      print('null Adminsnap');
      //_adminProfile = null;
      return null;
    }
    return adminSnapshot.map(_admin);
  }

  String get clubId {
    return _clubId;
  }

  String get clubName {
    return _clubName;
  }

  AdminProfile get adminData {
    return _adminData;
  }
}
