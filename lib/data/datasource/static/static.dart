import 'package:ecommerce_app/core/constant/strings.dart';
import 'package:ecommerce_app/data/model/onboarding_model.dart';

List<OnboardingModel> onboardingList = [
  OnboardingModel(
    title: 'Choose Product',
    body:
        'We Have a 100k+ Products.Choose\n Your product from our\nE-commerce shop. ',
    imageAsset: AppImageAssets.onbardingOne,
  ),
  OnboardingModel(
    title: 'Easy & Safe Payment',
    body:
        'Easy Chekout & Safe Payment \n method. Trusted by our Customers \n from all over the world.',
    imageAsset: AppImageAssets.onbardingTwo,
  ),
  OnboardingModel(
    title: 'Track Your Order',
    body:
        'Best Tracker has been Used For\nTracking your order. You\'ll know where\nyour product is at the moment.',
    imageAsset: AppImageAssets.onbardingThree,
  ),
  OnboardingModel(
    title: 'Fast Delivery',
    body:
        'Reliable And Fast Delivary. We\nDeliver your product the fastest way possible.',
    imageAsset: AppImageAssets.onbardingFour,
  ),
];
