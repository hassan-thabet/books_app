import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:content/bloc/home/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeBloc extends Cubit<HomeStates> {
  HomeBloc() : super(HomeInitialState());

  static HomeBloc get(context) => BlocProvider.of(context);

  String? uId;
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;

  //String? userImage;

  String? userImage =
      "https://www.bentbusinessmarketing.com/wp-content/uploads/2013/02/35844588650_3ebd4096b1_b-934x460.jpg";

  void getUserData() async {
    emit((HomeLoadingState()));

    /// get user UID data from shared preferences
    final preferences = await SharedPreferences.getInstance();
    final key = 'uId';
    final value = preferences.get(key) ?? null;
    uId = value as String?;

    /// get data from FireStore using user UID

    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print(documentSnapshot.data());
        firstName = documentSnapshot.get(FieldPath(['first_name']));
        lastName = documentSnapshot.get(FieldPath(['last_name']));
        email = documentSnapshot.get(FieldPath(['email']));
        phoneNumber = documentSnapshot.get(FieldPath(['phone_number']));
        emit((HomeSuccessState()));
      } else {
        print('Document does not exist on the database');
      }
    });
  }
}
