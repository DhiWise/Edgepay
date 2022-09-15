import 'package:razorpay_x_dhiwise/presentation/payment_links_screen/payment_links_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/payment_links_screen/binding/payment_links_binding.dart';
import 'package:razorpay_x_dhiwise/presentation/payment_links_details_screen/payment_links_details_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/payment_links_details_screen/binding/payment_links_details_binding.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_plan_details_screen/subscriptions_plan_details_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_plan_details_screen/binding/subscriptions_plan_details_binding.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_review_screen/subscriptions_review_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_review_screen/binding/subscriptions_review_binding.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_link_details_screen/subscriptions_link_details_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_link_details_screen/binding/subscriptions_link_details_binding.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_screen/subscriptions_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_screen/binding/subscriptions_binding.dart';
import 'package:razorpay_x_dhiwise/presentation/home_screen/home_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/home_screen/binding/home_binding.dart';
import 'package:razorpay_x_dhiwise/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/splashscreen_screen/binding/splashscreen_binding.dart';
import 'package:razorpay_x_dhiwise/presentation/transection_list_screen/transection_list_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/transection_list_screen/binding/transection_list_binding.dart';
import 'package:razorpay_x_dhiwise/presentation/transection_details_screen/transection_details_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/transection_details_screen/binding/transection_details_binding.dart';
import 'package:razorpay_x_dhiwise/presentation/standard_payment_link_screen/standard_payment_link_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/standard_payment_link_screen/binding/standard_payment_link_binding.dart';
import 'package:razorpay_x_dhiwise/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:razorpay_x_dhiwise/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String paymentLinksScreen = '/payment_links_screen';

  static String paymentLinksDetailsScreen = '/payment_links_details_screen';

  static String subscriptionsPlanDetailsScreen =
      '/subscriptions_plan_details_screen';

  static String subscriptionsReviewScreen = '/subscriptions_review_screen';

  static String subscriptionsLinkDetailsScreen =
      '/subscriptions_link_details_screen';

  static String subscriptionsScreen = '/subscriptions_screen';

  static String homeScreen = '/home_screen';

  static String splashscreenScreen = '/splashscreen_screen';

  static String transectionListScreen = '/transection_list_screen';

  static String transectionDetailsScreen = '/transection_details_screen';

  static String standardPaymentLinkScreen = '/standard_payment_link_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: paymentLinksScreen,
      page: () => PaymentLinksScreen(),
      bindings: [
        PaymentLinksBinding(),
      ],
    ),
    GetPage(
      name: paymentLinksDetailsScreen,
      page: () => PaymentLinksDetailsScreen(),
      bindings: [
        PaymentLinksDetailsBinding(),
      ],
    ),
    GetPage(
      name: subscriptionsPlanDetailsScreen,
      page: () => SubscriptionsPlanDetailsScreen(),
      bindings: [
        SubscriptionsPlanDetailsBinding(),
      ],
    ),
    GetPage(
      name: subscriptionsReviewScreen,
      page: () => SubscriptionsReviewScreen(),
      bindings: [
        SubscriptionsReviewBinding(),
      ],
    ),
    GetPage(
      name: subscriptionsLinkDetailsScreen,
      page: () => SubscriptionsLinkDetailsScreen(),
      bindings: [
        SubscriptionsLinkDetailsBinding(),
      ],
    ),
    GetPage(
      name: subscriptionsScreen,
      page: () => SubscriptionsScreen(),
      bindings: [
        SubscriptionsBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: splashscreenScreen,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    ),
    GetPage(
      name: transectionListScreen,
      page: () => TransectionListScreen(),
      bindings: [
        TransectionListBinding(),
      ],
    ),
    GetPage(
      name: transectionDetailsScreen,
      page: () => TransectionDetailsScreen(),
      bindings: [
        TransectionDetailsBinding(),
      ],
    ),
    GetPage(
      name: standardPaymentLinkScreen,
      page: () => StandardPaymentLinkScreen(),
      bindings: [
        StandardPaymentLinkBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    )
  ];
}
