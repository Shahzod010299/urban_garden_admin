import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          '/Users/shahzod/urban_garden_admin/assets/urban.png',
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Loginni kiriting",
                            helperText:
                                "Tizimga kirish uchun login ishlatiladi",
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Parolni kiriting",
                            helperText:
                                "Tizimga kirish uchun parol ishlatiladi",
                          ),
                        ),
                      ],
                    )),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'home_page');
                        },
                        child: Text(
                          'Tizimga kirsih',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green)),
                    SizedBox(height: 63,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
