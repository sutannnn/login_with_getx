import 'package:absen/app/widgets/TextFieldCustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<LoginController>();

    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 20),
                child: Text(
                  'LOGO',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Masuk',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.orange,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextFieldCustom(
                  controller: loginController.emailController,
                  title: 'Email',
                  isObsc: false,
                  icon: const Icon(Icons.email_outlined),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Obx(
                  () => TextFieldCustom(
                    controller: loginController.passwordController,
                    title: 'Password',
                    isObsc: !loginController.isVisible.value,
                    icon: const Icon(Icons.lock_outlined),
                    sufix: InkWell(
                      child: (loginController.isVisible.value == true)
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      onTap: () => loginController.changeVisibility(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Lupa Kata Sandi?',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: GestureDetector(
                  onTap: () => loginController.loginWithEmail(),
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.orange,
                    ),
                    child: const Center(
                      child: Text(
                        'Masuk',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 100,
                        child: Divider(
                          thickness: 1,
                        )),
                    Text('Atau Masuk Melalui'),
                    SizedBox(
                        width: 100,
                        child: Divider(
                          thickness: 1,
                        )),
                  ],
                ),
              ),
              SignInButton(
                Buttons.Google,
                onPressed: () {},
              ),
              const Text(
                'Akun Google',
                style: TextStyle(fontSize: 12),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'Dengan mendaftar, saya menyetujui',
                        style: const TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  ' Syarat & Ketentuan serta Kebijakan Privasi ',
                              style: const TextStyle(color: Colors.orange),
                              recognizer: TapAndPanGestureRecognizer()
                                ..onTapUp = (details) {
                                  // Get.to();
                                }),
                          const TextSpan(
                            text: 'yang berlaku.',
                            style: TextStyle(color: Colors.black),
                          ),
                        ])),
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/frame.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
