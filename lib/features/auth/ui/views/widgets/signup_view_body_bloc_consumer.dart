import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helpers/build_error_bar.dart';
import 'package:fruits_hub/features/auth/ui/logic/signup/signup_cubit.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/signup_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupFailed) {
          buildErrorBar(context, state.message);
        }
        if (state is SignupSuccess) {
          Navigator.of(context).pop();
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading,
          child: const SignupViewBody(),
        );
      },
    );
  }
}
