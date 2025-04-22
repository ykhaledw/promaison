// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Choose all the services you need from us`
  String get chooseYourPreferedService {
    return Intl.message(
      'Choose all the services you need from us',
      name: 'chooseYourPreferedService',
      desc: '',
      args: [],
    );
  }

  /// `Specialized in electrical work, air conditioning, elevators, plumbing, and other services. The company has experienced and highly qualified staff.`
  String get chooseYourServiceSubtitle {
    return Intl.message(
      'Specialized in electrical work, air conditioning, elevators, plumbing, and other services. The company has experienced and highly qualified staff.',
      name: 'chooseYourServiceSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Buy all the parts for your home with ease`
  String get buyAnyPiece {
    return Intl.message(
      'Buy all the parts for your home with ease',
      name: 'buyAnyPiece',
      desc: '',
      args: [],
    );
  }

  /// `We strive to provide a comprehensive service for home maintenance work that our clients need professionally, to be their first choice.`
  String get buyAnyPieceSubtitle {
    return Intl.message(
      'We strive to provide a comprehensive service for home maintenance work that our clients need professionally, to be their first choice.',
      name: 'buyAnyPieceSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Offering VIP Service`
  String get offeringVIPService {
    return Intl.message(
      'Offering VIP Service',
      name: 'offeringVIPService',
      desc: '',
      args: [],
    );
  }

  /// `VIP is a service you can subscribe to annually with the option of monthly payments, ensuring the maintenance of your home or facility.`
  String get offeringVIPServiceSubtitle {
    return Intl.message(
      'VIP is a service you can subscribe to annually with the option of monthly payments, ensuring the maintenance of your home or facility.',
      name: 'offeringVIPServiceSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Get started`
  String get getStarted {
    return Intl.message('Get started', name: 'getStarted', desc: '', args: []);
  }

  /// `Skip login`
  String get skipLogin {
    return Intl.message('Skip login', name: 'skipLogin', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Log in using your phone number`
  String get loginUsingPhone {
    return Intl.message(
      'Log in using your phone number',
      name: 'loginUsingPhone',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number here`
  String get enterYourNumber {
    return Intl.message(
      'Enter your phone number here',
      name: 'enterYourNumber',
      desc: '',
      args: [],
    );
  }

  /// `By completing registration, you agree to the terms and conditions of PROMAISON`
  String get conditionsText {
    return Intl.message(
      'By completing registration, you agree to the terms and conditions of PROMAISON',
      name: 'conditionsText',
      desc: '',
      args: [],
    );
  }

  /// `Read the terms`
  String get readConditions {
    return Intl.message(
      'Read the terms',
      name: 'readConditions',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get otp {
    return Intl.message('Verification Code', name: 'otp', desc: '', args: []);
  }

  /// `Enter the 4-digit OTP sent to your phone number`
  String get enterReceivedOTP {
    return Intl.message(
      'Enter the 4-digit OTP sent to your phone number',
      name: 'enterReceivedOTP',
      desc: '',
      args: [],
    );
  }

  /// `You can resend the code in`
  String get youCanResendCode {
    return Intl.message(
      'You can resend the code in',
      name: 'youCanResendCode',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Resend`
  String get resend {
    return Intl.message('Resend', name: 'resend', desc: '', args: []);
  }

  /// `Incorrect code`
  String get wrongCode {
    return Intl.message(
      'Incorrect code',
      name: 'wrongCode',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get requiredField {
    return Intl.message(
      'This field is required',
      name: 'requiredField',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
