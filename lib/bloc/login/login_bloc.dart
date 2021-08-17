
import 'package:bloc/bloc.dart';
import 'package:content/bloc/login/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';


class LoginBloc extends Cubit<LoginStates>
{
  LoginBloc() : super (LoginInitialState());
  static LoginBloc get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool visibility  = true;

  void visibilityOnTap() async
  {
    visibility = !visibility;
    emit((LoginVisibilityState()));
  }




}