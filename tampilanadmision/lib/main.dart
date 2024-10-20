import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Flags Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                          'https://storage.googleapis.com/a1aa/image/YnApcXo0jeQxHKEV1RG8OEOna45U259S2Fze5SGaTmFEyroTA.jpg'),
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                          'https://storage.googleapis.com/a1aa/image/hb18qOSTdaIvHZWge05OOWr4ZtXLRfF5rq1YFGfnWBzLkXRnA.jpg'),
                    ),
                  ],
                ),
                SizedBox(height: 24),

                // University Logo
                Center(
                  child: Image.network(
                    'https://undiknas.ac.id/wp-content/uploads/2023/04/UNDIKNAS-COLOR-768x768.png',
                    height: 150,
                    width: 150,
                  ),
                ),
                SizedBox(height: 24),

                // Email Field
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.grey[300]),
                    prefixIcon: Icon(Icons.email, color: Colors.yellow[700]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // Password Field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.grey[300]),
                    prefixIcon: Icon(Icons.lock, color: Colors.yellow[700]),
                    suffixIcon: Icon(Icons.visibility, color: Colors.grey[300]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 24),

                // Login Button
                ElevatedButton(
                  onPressed: () {
                    // Handle login logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 16),

                // Links
                Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle new user logic
                        },
                        child: Text(
                          'Mahasiswa Baru ? Klik disini',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle forgot password logic
                        },
                        child: Text(
                          'Lupa password',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
