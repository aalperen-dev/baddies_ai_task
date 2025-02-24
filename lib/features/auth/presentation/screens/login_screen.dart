import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

import '../widgets/auth_input_field.dart';
import '../widgets/rounded_pink_button.dart';
import '../widgets/square_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              context.assets.icons.planet_png,
            ),
            Text('text'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: context.sizes.height * 0.1,
          ),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              spacing: 10.0,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  context.translate.hello,
                  style: context.textStyles.displayMedium,
                ),
                Text(
                  context.translate.lorem * 10,
                  textAlign: TextAlign.center,
                  style: context.textStyles.bodyLarge.copyWith(fontSize: 13),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: context.sizes.height * 0.05,
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AuthInputField(
                          hintText: context.translate.email,
                          controller: emailController,
                          prefixIconPath: context.assets.icons.message_png,
                        ),
                        AuthInputField(
                          hintText: context.translate.password,
                          controller: passwordController,
                          prefixIconPath: context.assets.icons.unlock_png,
                          isObscure: true,
                        ),
                        // şifremi unuttum
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: context.sizes.height * 0.03,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {
                                // TODO: şifremi unuttum ekranına yönlendirme yapılacak/popup gelecek
                              },
                              child: Text(
                                context.translate.forgat_pass,
                                style: context.textStyles.bodyLarge
                                    .copyWith(fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        // login buton
                        RoundedPinkButton(
                          buttonText: context.translate.login,
                          onTap: () {
                            // TODO: login işlemi yapılacak
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    // afternatif girişler
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: context.sizes.height * 0.01,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10.0,
                        children: [
                          SquareButton(
                            onTap: () {
                              // TODO: google login bağlanacak
                            },
                            assetPath: context.assets.icons.google_png,
                          ),
                          SquareButton(
                            onTap: () {
                              // TODO: apple login bağlanacak
                            },
                            assetPath: context.assets.icons.apple_png,
                          ),
                          SquareButton(
                            onTap: () {
                              // TODO: facebook login bağlanacak
                            },
                            assetPath: context.assets.icons.facebook_png,
                          ),
                        ],
                      ),
                    ),
                    // kayıt ol
                    Row(
                      spacing: 8.0,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.translate.dont_have_an_account,
                          style: context.textStyles.bodyLarge.copyWith(
                            fontSize: 13,
                            color: AppPalette.darkGrey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // TODO: kayıt ol ekranına yönlendirme yapılacak
                          },
                          child: Text(
                            context.translate.register,
                            style: context.textStyles.bodyLarge.copyWith(
                              fontSize: 13,
                              color: AppPalette.darkBlue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
