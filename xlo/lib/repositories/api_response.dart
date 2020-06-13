import 'api_error.dart';

class ApiResponse{
  ApiResponse.sucess({this.success}){
    success = true;
  }

  ApiResponse.error({this.error}){
    success = false;
  }


  bool success;
  dynamic result;
  ApiError error;

}