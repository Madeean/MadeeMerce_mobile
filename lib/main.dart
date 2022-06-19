import 'package:firebase_core/firebase_core.dart';
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
import 'package:flutter_client/providers/cart_provider.dart';
import 'package:flutter_client/providers/page_provider.dart';
import 'package:flutter_client/providers/product_provider.dart';
import 'package:flutter_client/providers/transaction_provider.dart';
import 'package:flutter_client/providers/wishlist_provider.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
