import 'package:ecommerce_app/core/constant/strings.dart';
import 'package:ecommerce_app/core/localization/translations.dart';
import 'package:ecommerce_app/data/model/onboarding_model.dart';

List<OnboardingModel> onboardingList = [
  OnboardingModel(
    title: Tr.chooseProduct,
    body: Tr.weHave100kProducts,
    imageAsset: AppImageAssets.onbardingOne,
  ),
  OnboardingModel(
    title: Tr.easyAndSafePayment,
    body: Tr.easyCheckoutAndSafePayment,
    imageAsset: AppImageAssets.onbardingTwo,
  ),
  OnboardingModel(
    title: Tr.trackYourOrder,
    body: Tr.bestTrackerUsedForTracking,
    imageAsset: AppImageAssets.onbardingThree,
  ),
  OnboardingModel(
    title: Tr.fastDelivery,
    body: Tr.reliableAndFastDelivery,
    imageAsset: AppImageAssets.onbardingFour,
  ),
];
