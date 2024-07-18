import 'package:flutter/material.dart';

class Contact {
  String name;
  String email;
  // string - not all phone numbers are valid mathematical numbers
  String phoneNumber;

  Contact({
    required this.name,
    required this.email,
    required this.phoneNumber,
  });
}
