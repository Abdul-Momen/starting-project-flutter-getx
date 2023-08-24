import 'dart:convert';
import 'dart:developer';

import 'package:aladin/constants/string.dart';
import 'package:aladin/states/services/base_client.dart';
import 'package:aladin/states/utils/methods.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeService {

  // get closing list
  static Future<dynamic> getClosingSoon() async {
    var cResponse = BaseClient.getData(
        api: ConstantStrings.kClosingList);
    return cResponse;
  }

  // get runningCampaign list
  static Future<dynamic> getRunningCampaign() async {
    var rCampaignResponse = BaseClient.getData(
        api: ConstantStrings.kRunningCampaignList);
    return rCampaignResponse;
  }

  static Future<dynamic> testPost({
    required int bankAc,
    required int addBalance,
    required int userId,
  }) async {
    Map<String, dynamic> pBody = {
      "bank_acc_no": bankAc,
      "bank_balance": addBalance,
      "user_id": userId,
    };
    var response = BaseClient.postData(
      api: 'post-data',
      body: pBody,
    );
    return response;
  }
}
