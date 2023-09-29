import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Tentukan ukuran teks dan gambar berdasarkan lebar layar
    double textSize = screenWidth * 0.09; // Sesuaikan dengan preferensi Anda
    double imageWidth = screenWidth * 0.5; // Sesuaikan dengan preferensi Anda

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60.0),
              Image.asset(
                "assets/images/logo.png",
                width: imageWidth, // Gunakan lebar gambar yang telah ditentukan
              ),
              Center(
                child: Text(
                  'MyCashBook v1.0',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize:
                        textSize, // Gunakan ukuran teks yang telah ditentukan
                  ),
                ),
              ),
              SizedBox(height: 20.0), // Tambahkan jarak antara judul dan form input
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.0), // Tambahkan jarak antara username dan password
              TextField(
                controller: passwordController,
                obscureText: true, // Untuk menyembunyikan karakter password
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0), // Tambahkan jarak antara password dan tombol login
              ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk melakukan login di sini
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
