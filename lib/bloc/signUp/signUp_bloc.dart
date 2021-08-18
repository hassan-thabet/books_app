import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:content/bloc/signUp/signUp_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Cubit<SignUpStates>
{
  SignUpBloc() : super (SignUpInitialState());
  static SignUpBloc get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool visibility  = true;

  void visibilityOnTap() async
  {
    visibility = !visibility;
    emit((SignUpVisibilityState()));
  }
}