import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:content/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:content/bloc/register/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';

class RegisterBloc extends Cubit<RegisterStates> {
  RegisterBloc() : super(RegisterInitialState());

  static RegisterBloc get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  bool visibility = true;
  bool selectedInterests = true;
  XFile? pickedImage;

  String? email;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? uId;

  void visibilityOnTap() {
    visibility = !visibility;
    emit((RegisterVisibilityState()));
  }

  void interestsOnTap() {
    selectedInterests = !selectedInterests;
    emit((RegisterInterestsState()));
  }

  void userRegister({
    required String email,
    required String password,
  }) {
    emit((RegisterLoadingState()));
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user!.uid);
      saveUserUId(value.user!.uid);
      emit((RegisterSuccessState()));
    }).catchError((error) {
      print(error.toString());
      emit((RegisterErrorState()));
    });
  }

  Future<void> saveUserEmail(
    String? email,
  ) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setString('email', email!);
    print('user email saved in shared preferences successfully');
  }

  Future<void> saveUserUId(
    String? uId,
  ) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setString('uId', uId!);
    print('user uId saved in shared preferences successfully');
  }

  Future pickUserImage() async {
    ImagePicker imagePicker = ImagePicker();
    await imagePicker.pickImage(source: ImageSource.gallery).then((image) {
      //pickedImage = XFile(image!.path);
      print(image!.path);
      emit((RegisterPickImageState()));
    });
  }

  Future uploadImage() async {}

  Future<void> saveUserInfo(
    String? firstName,
    String? lastName,
    String? phoneNumber,
  ) async {
    emit((NameLoadingState()));
    try {
      final preferences = await SharedPreferences.getInstance();
      preferences.setString('first_name', firstName!);
      preferences.setString('last_name', lastName!);
      preferences.setString('phone_number', phoneNumber!);
      print(firstName + ' : ' + lastName + ' : ' + phoneNumber);
      emit((NameSuccessState()));
    } catch (error) {
      emit((NameErrorState()));
    }
  }

  void createUser() async {
    emit((CreateLoadingState()));
    SharedPreferences preferences = await SharedPreferences.getInstance();
    email = (preferences.getString('email') ?? 'Guest');
    firstName = (preferences.getString('first_name') ?? 'Guest');
    lastName = (preferences.getString('last_name') ?? 'Guest');
    phoneNumber = (preferences.getString('phone_number') ?? 'Guest');
    uId = (preferences.getString('uId') ?? 'Guest');

    UserModel userModel = UserModel(
      email: email,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      uId: uId,
    );

    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(userModel.userToMap())
        .then((value) {
      saveUserIsAuth(true);
      emit((CreateSuccessState()));
    }).catchError((error) {
      emit((CreateErrorState()));
    });
  }

  Future<void> saveUserIsAuth(
    bool? isAuth,
  ) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setBool('is_auth', isAuth!);
    print('user isAuth saved on shared preferences');
  }
}
