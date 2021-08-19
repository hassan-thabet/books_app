import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:content/bloc/signUp/signUp_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';

class SignUpBloc extends Cubit<SignUpStates> {
  SignUpBloc() : super(SignUpInitialState());

  static SignUpBloc get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  bool visibility = true;
  bool selectedInterests = true;
  XFile? pickedImage;

  void visibilityOnTap() {
    visibility = !visibility;
    emit((SignUpVisibilityState()));
  }

  void interestsOnTap() {
    selectedInterests = !selectedInterests;
    emit((SignUpInterestsState()));
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

  Future<void> saveUserEmail(
    String? email,
  ) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setString('email', email!);
    print('user email saved in shared preferences successfully');
  }

  Future pickUserImage() async {
    ImagePicker imagePicker = ImagePicker();
    await imagePicker.pickImage(source: ImageSource.gallery).then((image) {
      emit((SignUpPickImageState()));
      pickedImage = image;
    });
  }

  Future<void> saveUserInfo(
    String? firstName,
    String? lastName,
    String? phoneNumber,
  ) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setString('firstName', firstName!);
    preferences.setString('lastName', lastName!);
    preferences.setString('phoneNumber', phoneNumber!);
    print(firstName + ' : ' + lastName + ' : ' + phoneNumber);
  }
}