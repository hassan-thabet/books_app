
import 'package:bloc/bloc.dart';
import 'package:content/bloc/login/login_states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginBloc extends Cubit<LoginStates>
{
  LoginBloc() : super (LoginInitialState());
  static LoginBloc get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool visibility = true;

  void visibilityOnTap() async {
    visibility = !visibility;
    emit((LoginVisibilityState()));
  }

  void userLogin({
    required String email,
    required String password,
  }) {
    emit((LoginLoadingState()));
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      print(value.user!.uid + ' Logged in successfully');
      saveUserIsAuth(true);
      emit((LoginSuccessState()));
    }).catchError((error) {
      print('error : ' + error.toString());
      emit((LoginErrorState()));
    });
  }
}

Future<void> saveUserIsAuth(
  bool? isAuth,
) async {
  final preferences = await SharedPreferences.getInstance();
  preferences.setBool('is_auth', isAuth!);
  print('user isAuth saved on shared preferences');
}