import 'package:baddies_ai_task/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import '../widgets/auth_input_field.dart';
import '../widgets/rounded_pink_button.dart';
import '../widgets/square_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final passwordRepeatController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Image.asset(context.assets.images.baddies_logo_png),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            spacing: 10.0,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                context.translate.welcome,
                style: context.textStyles.displayMedium,
              ),
              Text(
                context.translate.lorem * 5,
                textAlign: TextAlign.center,
                style: context.textStyles.bodyLarge.copyWith(fontSize: 13),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: context.sizes.height * 0.02,
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AuthInputField(
                        hintText: context.translate.name_surname,
                        controller: nameController,
                        prefixIconPath: context.assets.icons.add_user_png,
                      ),
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
                      AuthInputField(
                        hintText: context.translate.password_repeat,
                        controller: passwordRepeatController,
                        prefixIconPath: context.assets.icons.unlock_png,
                        isObscure: true,
                      ),
                      // kullanıcı sözleşmesi
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: context.sizes.height * 0.03,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              spacing: 5,
                              children: [
                                Text(
                                  context.translate.user_agreement,
                                  style: context.textStyles.bodyLarge.copyWith(
                                    fontSize: 13,
                                    color: AppPalette.greyTransparent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // TODO: sözleşme popupı açılacak
                                  },
                                  child: Text(
                                    context.translate.read_agree,
                                    style:
                                        context.textStyles.bodyLarge.copyWith(
                                      fontSize: 13,
                                      decoration: TextDecoration.underline,
                                      color: AppPalette.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              context.translate.read_cont,
                              style: context.textStyles.bodyLarge.copyWith(
                                fontSize: 13,
                                color: AppPalette.greyTransparent,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // login buton
                      RoundedPinkButton(
                        buttonText: context.translate.register_now,
                        onTap: () {
                          // TODO: register işlemi yapılacak
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  // afternatif kayıt methodları
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
                            // TODO: google register bağlanacak
                          },
                          assetPath: context.assets.icons.google_png,
                        ),
                        SquareButton(
                          onTap: () {
                            // TODO: apple register bağlanacak
                          },
                          assetPath: context.assets.icons.apple_png,
                        ),
                        SquareButton(
                          onTap: () {
                            // TODO: facebook register bağlanacak
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
                          // TODO: login ekranına yönlendirme yapılacak
                          context.navigator.pushMaterial(LoginScreen());
                        },
                        child: Text(
                          context.translate.login,
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
    );
  }
}
