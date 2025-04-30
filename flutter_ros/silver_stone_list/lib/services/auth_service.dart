// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

 class AuthService {
final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;

Future<firebase_auth.User?> registerWithEmailPassword(String email, String password) async {
try {
final result = await _auth.createUserWithEmailAndPassword(
email: email,
password: password,
);
return result.user;
} catch (e) {
print(e);
return null;
}
}
						
Future<firebase_auth.User?> signIn(String email, String password) async {
try {
final result = await _auth.signInWithEmailAndPassword(
email: email,
password: password,
);
return result.user;
} catch (e) {
return null;
}
}
                          
Future<void> signOut() async {
await _auth.signOut();
}
}