import 'package:fci/app/di.dart';
import 'package:fci/app/extensions.dart';

import 'package:fci/presentation/login/cupit/login%20cupit.dart';
import 'package:fci/presentation/login/cupit/login_states.dart';
import 'package:fci/presentation/resources/assets_manager.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/constants_manager.dart';
import 'package:fci/presentation/resources/strings_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fci/presentation/resources/values_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(instance()),
        child: BlocBuilder<LoginCubit, LoginStates>(
          builder: (context, state) {
            final loginCubit =
                BlocProvider.of<LoginCubit>(context); // Changed variable name
            return Container(
              padding: const EdgeInsets.only(top: AppPadding.p8),
              child: Form(
                key: loginCubit.formKey, // Changed to loginCubit
                child: Column(
                  children: [
                    Container(
                      height: context.height /2.2,

                      child: Column(
                        children: [
                          SizedBox(
                              height: context.height*1/6,
                              child: Image.asset(ImageAssets.onboardingLogo1,fit: BoxFit.cover,)),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: AppPadding.p28,
                              right: AppPadding.p28,
                            ),
                            child: Text(""),
                          ),
                          const SizedBox(
                            height: AppSize.s18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: AppPadding.p28,
                              right: AppPadding.p28,
                            ),
                            child: Text(""),
                          ),
                          const SizedBox(
                            height: AppSize.s18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: AppPadding.p28,
                              right: AppPadding.p28,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: AppSize.s40,
                              child: const Text('Login'),
                            ),
                          ),
                          const SizedBox(
                            height: AppSize.s18,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: ColorManager.gray,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppSize.s30),
                              topRight: Radius.circular(AppSize.s30)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                                height: context.height*1/6,
                                child: Image.asset(ImageAssets.onboardingLogo1,fit: BoxFit.cover,)),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: AppPadding.p28,
                                right: AppPadding.p28,
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: loginCubit.userNameController,
                                onChanged: (value) {
                                  loginCubit.setUserName(value);
                                },
                                decoration: const InputDecoration(
                                  hintText: AppStrings.email,
                                  labelText: AppStrings.email,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: AppSize.s18,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: AppPadding.p28,
                                right: AppPadding.p28,
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                controller: loginCubit.passwordController,
                                onChanged: (value) {
                                  loginCubit.setPassword(value);
                                },
                                decoration: const InputDecoration(
                                  hintText: AppStrings.password,
                                  labelText: AppStrings.password,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: AppSize.s18,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: AppPadding.p28,
                                right: AppPadding.p28,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                height: AppSize.s40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    loginCubit.login();
                                  },
                                  child: const Text('Login'), // Changed to 'Login'
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: AppSize.s18,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
