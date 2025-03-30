import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ứng dụng Chat Bảo mật',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4A90E2), // Màu xanh pastel
          primary: const Color(0xFF4A90E2),
          secondary: const Color(0xFF6FCF97), // Màu xanh lá pastel
          surface: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0), // Viền vuông
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide: const BorderSide(color: Color(0xFF4A90E2)),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF4A90E2),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0), // Nút vuông
            ),
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF4A90E2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5), // Màu nền pastel nhẹ
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Nửa bên trái: Logo và giới thiệu
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Phóng to logo
                      Image.asset(
                        'assets/app_logo.png',
                        width: 500,
                        height: 110,
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Ứng dụng chat bảo mật đơn giản',
                        style: TextStyle(
                          fontSize: 35, // Tăng kích thước chữ cho nổi bật hơn
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1E1E1E),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10), // Khoảng cách giữa 2 nửa
                // Nửa bên phải: Form đăng nhập
                Expanded(
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(maxWidth: 200),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // TextField Email/Số điện thoại
                        const TextField(
                          decoration: InputDecoration(
                            hintText: 'Email hoặc số điện thoại',
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // TextField Mật khẩu
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Mật khẩu',
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        // Nút Đăng nhập
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Đăng nhập'),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Quên mật khẩu
                        TextButton(
                          onPressed: () {},
                          child: const Text('Quên mật khẩu?'),
                        ),
                        const SizedBox(height: 16),
                        const Divider(thickness: 1),
                        const SizedBox(height: 16),
                        // Nút Tạo tài khoản mới
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF6FCF97),
                            ),
                            child: const Text('Tạo tài khoản mới'),
                          ),
                        ),
                      ],
                    ),
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
