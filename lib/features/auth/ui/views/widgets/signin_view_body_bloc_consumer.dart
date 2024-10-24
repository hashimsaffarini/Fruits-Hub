import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helpers/build_error_bar.dart';
import 'package:fruits_hub/features/auth/ui/logic/signin/signin_cubit.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/signin_view_body.dart';
import 'package:fruits_hub/features/home/ui/views/home_view.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninFailure) {
          buildErrorBar(context, state.message);
        }
        if (state is SigninSuccess) {
          Navigator.of(context).pushNamed(HomeView.routeName);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SigninLoading,
          child: const SigninViewBody(),
        );
      },
    );
  }
}
