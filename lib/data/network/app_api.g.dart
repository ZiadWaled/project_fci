// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'app_api.dart';
//
// // **************************************************************************
// // RetrofitGenerator
// // **************************************************************************
//
// // ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers
//
// class _AppServiceClint implements AppServiceClint {
//   _AppServiceClint(
//     this._dio, {
//     this.baseUrl,
//   }) {
//     baseUrl ??= 'https://rdko6.wiremockapi.cloud/';
//   }
//
//   final Dio _dio;
//
//   String? baseUrl;
//
//   @override
//   Future<AuthenticationResponse> login(
//     String email,
//     String password,
//   ) async {
//     final _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = {
//       'email': email,
//       'password': password,
//     };
//     final _result = await _dio.fetch<Map<String, dynamic>>(
//         _setStreamType<AuthenticationResponse>(Options(
//       method: 'POST',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               '/customers/login',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(
//                 baseUrl: _combineBaseUrls(
//               _dio.options.baseUrl,
//               baseUrl,
//             ))));
//     final value = AuthenticationResponse.fromJson(_result.data!);
//     return value;
//   }
//
//   @override
//   Future<SignUpResponse> signUp(
//     String name,
//     String phone,
//     String email,
//     String password,
//   ) async {
//     final _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = {
//       'name': name,
//       'phone': phone,
//       'email': email,
//       'password': password,
//     };
//     final _result = await _dio
//         .fetch<Map<String, dynamic>>(_setStreamType<SignUpResponse>(Options(
//       method: 'POST',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               '/customer/signUp',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(
//                 baseUrl: _combineBaseUrls(
//               _dio.options.baseUrl,
//               baseUrl,
//             ))));
//     final value = SignUpResponse.fromJson(_result.data!);
//     return value;
//   }
//
//   RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
//     if (T != dynamic &&
//         !(requestOptions.responseType == ResponseType.bytes ||
//             requestOptions.responseType == ResponseType.stream)) {
//       if (T == String) {
//         requestOptions.responseType = ResponseType.plain;
//       } else {
//         requestOptions.responseType = ResponseType.json;
//       }
//     }
//     return requestOptions;
//   }
//
//   String _combineBaseUrls(
//     String dioBaseUrl,
//     String? baseUrl,
//   ) {
//     if (baseUrl == null || baseUrl.trim().isEmpty) {
//       return dioBaseUrl;
//     }
//
//     final url = Uri.parse(baseUrl);
//
//     if (url.isAbsolute) {
//       return url.toString();
//     }
//
//     return Uri.parse(dioBaseUrl).resolveUri(url).toString();
//   }
// }