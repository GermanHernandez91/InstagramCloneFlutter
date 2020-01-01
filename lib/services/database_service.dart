import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/models/user_mode.dart';
import 'package:instagram_clone/utilities/constants.dart';

class DatabaseService {
  static void updateUser(User user) {
    usersRef.document(user.id).updateData({
      'name': user.name,
      'profileImageUrl': user.profileImageUrl,
      'bio': user.bio,
    });
  }

  static Future<QuerySnapshot> searchUsers(String name) {
    Future<QuerySnapshot> users =
        usersRef.where('email', isGreaterThanOrEqualTo: name).getDocuments();
    return users;
  }
}