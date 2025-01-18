// fake_database.dart
import 'users.dart';

class FakeDatabase {
  final List<User> users;

  FakeDatabase(this.users);

  User? getUserByEmail(String email) {
    if (users.isEmpty) {
      return null;
    }

    try {
      return users.firstWhere((user) => user.email == email);
    } catch (e) {
      return null; // No matching user found
    }
  }

  bool signUpUser(User newUser) {
    if (getUserByEmail(newUser.email) == null) {
      users.add(newUser);
      return true; // Signup successful
    }
    return false; // Email already exists
  }

  User? loginUser(String email, String password) {
    User? user = getUserByEmail(email);
    if (user != null && user.authenticate(password)) {
      return user; // Login successful
    }
    return null; // Invalid email or password
  }
}

// Create a singleton instance of the FakeDatabase
FakeDatabase fakeDatabase = FakeDatabase([
  User(
      firstName: 'John Doe',
      lastName: 'tete',
      email: 'john@example.com',
      password: 'password123'),
  // Add more fake users as needed
]);
