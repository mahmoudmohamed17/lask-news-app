import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lask_news_app/core/extensions/context_extension.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/core/widgets/custom_auth_button.dart';
import 'package:lask_news_app/core/widgets/custom_text_form_field.dart';
import 'package:lask_news_app/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:lask_news_app/features/auth/presentation/widgets/image_picking_widget.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  String email = '', password = '';
  late GlobalKey<FormState> formKey;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(context.height * 0.09),
              ImagePickingWidget(),
              verticalSpace(32),
              Text(
                'Create Account',
                style: Styles.semiBold32,
                textAlign: TextAlign.center,
              ),
              verticalSpace(32),
              CustomTextFormField(hintText: 'Name'),
              verticalSpace(16),
              CustomTextFormField(
                hintText: 'Email',
                onChanged: (value) {
                  email = value;
                },
              ),
              verticalSpace(16),
              CustomTextFormField(
                hintText: 'Password',
                onChanged: (value) {
                  password = value;
                },
              ),
              verticalSpace(16),
              CustomAuthButton(
                label: 'Continue',
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    await context
                        .read<SignupCubit>()
                        .signUp(email: email, password: password);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
