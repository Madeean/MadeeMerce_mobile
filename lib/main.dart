import 'package:flutter/material.dart';
import 'package:flutter_client/pages/cart_page.dart';
import 'package:flutter_client/pages/checkout_page.dart';
import 'package:flutter_client/pages/checkout_success_page.dart';
import 'package:flutter_client/pages/detail_chat_page.dart';
import 'package:flutter_client/pages/edit_profile_page.dart';
import 'package:flutter_client/pages/home/main_page.dart';
import 'package:flutter_client/pages/product_page.dart';
import 'package:flutter_client/pages/sign_in_page.dart';
import 'package:flutter_client/pages/sign_up_page.dart';
import 'package:flutter_client/pages/splash_page.dart';
import 'package:flutter_client/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/product': (context) => ProductPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
