import 'dart:convert';

import 'package:aladin/modules/home/model/campaign_runing_model.dart';
import 'package:aladin/modules/home/model/closing_soon_model.dart';
import 'package:aladin/modules/home/service/home_service.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {

  RxBool pClosingLoading = false.obs;
  RxBool pCampaignLoading=false.obs;
  ClosingSoonModel? closingSoon;
  CampaignRuningModel? runningCampaign;

  ///closing soon
 void getClosingSoon()async{
    pClosingLoading.value =true;
    try{
      var closingResponse = await HomeService.getClosingSoon();
      closingSoon= closingSoonModelFromJson(jsonEncode(closingResponse));
      print("TEst Get Closing res");
      print("TEst Get = " +closingResponse.toString());
    }finally{
      pClosingLoading.value = false;
    }
  }
  ///Running Campaign
  void getRunningCampaign()async{
      pCampaignLoading=true.obs;
    try{
      var runningResponse= await HomeService.getRunningCampaign();
      runningCampaign = campaignRuningModelFromJson(jsonEncode(runningResponse));
      print("TEst Get Running Res");
      print("TEst Get = " +runningResponse.toString());
    }finally{
      pCampaignLoading.value=false;
    }
  }
}
