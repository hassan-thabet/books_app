import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:content/bloc/signUp/signUp_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Cubit<SignUpStates>
{
  SignUpBloc() : super(SignUpInitialState());

  static SignUpBloc get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool visibility = true;

  void visibilityOnTap() async {
    visibility = !visibility;
    emit((SignUpVisibilityState()));
  }

  void userRegister({
    required String email,
    required String password,
  }) {
    emit((SignUpLoadingState()));
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user!.uid);
      emit((SignUpSuccessState()));
    }).catchError((error) {
      print(error.toString());
      emit((SignUpErrorState()));
    });
  }
}