# BJAFNUtils
封装了AFN3.0版本GET和POST请求方式

##get请求方法
```+ (void)getHttp:(NSString *)urlString success:(void (^)(id responseDic))success failure:(void (^)(NSError *error))failure;```
##post请求方法
```+ (void)postHttp:(NSString *)urlString parameter:(NSDictionary *)parameter success:(void (^)(id responseDic))success failure:(void (^)(NSError *error))failure;```
