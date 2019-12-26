import 'package:instagram_clone/models/user_mode.dart';
import 'package:instagram_clone/utilities/constants.dart';

class DatabaseService {
  static void updateUser(User user) {
    usersRef.document(user.id).updateData({
      'name': user.name,
      'profileImageUlr': user.profileImageUrl,
      'bio': user.bio,
    });
  }
}
