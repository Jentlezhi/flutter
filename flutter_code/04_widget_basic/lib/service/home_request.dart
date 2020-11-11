import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/douban/pages/home/top_moive_model.dart';
import 'package:hello_flutter/service/http_config.dart';
import 'package:hello_flutter/service/http_request.dart';

class HomeRequest{

  static Future movieList({start = 0}) async{

    final URL = '/movie/top250?apikey=0df993c66c0c636e29ecbb5344252a4a&start=$start&count=${HomeConfig.HOME_MOVIE_LIST_PAGE_SIZE}';
//    MyHttpRequest.request(URL).then((value){
//      print("value=$value");
//    });
    final result = await MyHttpRequest.request(URL);
    DBTopMoiveModel moiveModel = DBTopMoiveModel.fromJson(result);
    return moiveModel;
  }
}