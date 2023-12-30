class ErrorResponse {
  String? errorUserMsg;
  String? step;
  String? referenceId;
  String? traceId;
  String? errorCode;
  List<Errors>? errors;

  ErrorResponse(
      {this.errorUserMsg,
      this.step,
      this.referenceId,
      this.traceId,
      this.errorCode,
      this.errors});

  ErrorResponse.fromJson(Map<String, dynamic> json) {
    errorUserMsg = json['errorUserMsg'];
    step = json['step'];
    referenceId = json['referenceId'];
    traceId = json['traceId'];
    errorCode = json['errorCode'];
    if (json['errors'] != null) {
      errors = <Errors>[];
      json['errors'].forEach((v) {
        errors!.add(Errors.fromJson(v));
      });
    }
    if ((errorUserMsg?.isEmpty ?? true) && json["message"] != null) {
      errorUserMsg = json["message"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['errorUserMsg'] = errorUserMsg;
    data['step'] = step;
    data['referenceId'] = referenceId;
    data['traceId'] = traceId;
    data['errorCode'] = errorCode;
    if (errors != null) {
      data['errors'] = errors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Errors {
  String? code;
  String? message;

  Errors({this.code, this.message});

  Errors.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}

var tokenErrorSampleList = [
  {
    "errorUserMsg": "Access Token is missing in the Header.",
    "errorCode": "error.auth.token.missing",
    "step": "",
    "referenceId": "",
    "traceId": "",
    "errors": []
  },
  {
    "errorUserMsg": "Auth Token Expired",
    "errorCode": "error.auth.token.expired",
    "step": "",
    "referenceId": "",
    "traceId": "",
    "errors": []
  },
  {
    "errorUserMsg": "Auth Token Information Missing",
    "errorCode": "error.auth.token.decode",
    "step": "",
    "referenceId": "",
    "traceId": "",
    "errors": []
  }
].map((e) => ErrorResponse.fromJson(e)).toList();
