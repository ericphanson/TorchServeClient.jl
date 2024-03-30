# DefaultApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_description**](DefaultApi.md#api_description) | **OPTIONS** / | 
[**api_description_0**](DefaultApi.md#api_description_0) | **GET** /api-description | 
[**metrics**](DefaultApi.md#metrics) | **GET** /metrics | 
[**ping**](DefaultApi.md#ping) | **GET** /ping | 
[**predictions**](DefaultApi.md#predictions) | **POST** /predictions/{model_name} | 
[**predictions_v1**](DefaultApi.md#predictions_v1) | **POST** /v1/models/{model_name}:predict | 
[**predictions_v2**](DefaultApi.md#predictions_v2) | **POST** /v2/models/{model_name}/infer | 
[**version_predictions**](DefaultApi.md#version_predictions) | **POST** /predictions/{model_name}/{model_version} | 


# **api_description**
> api_description(_api::DefaultApi; _mediaType=nothing) -> ApiDescription200Response, OpenAPI.Clients.ApiResponse <br/>
> api_description(_api::DefaultApi, response_stream::Channel; _mediaType=nothing) -> Channel{ ApiDescription200Response }, OpenAPI.Clients.ApiResponse



Get openapi description.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**ApiDescription200Response**](ApiDescription200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **api_description_0**
> api_description_0(_api::DefaultApi; _mediaType=nothing) -> ApiDescription200Response, OpenAPI.Clients.ApiResponse <br/>
> api_description_0(_api::DefaultApi, response_stream::Channel; _mediaType=nothing) -> Channel{ ApiDescription200Response }, OpenAPI.Clients.ApiResponse



Get openapi description.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**ApiDescription200Response**](ApiDescription200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **metrics**
> metrics(_api::DefaultApi; name=nothing, _mediaType=nothing) -> Metrics200Response, OpenAPI.Clients.ApiResponse <br/>
> metrics(_api::DefaultApi, response_stream::Channel; name=nothing, _mediaType=nothing) -> Channel{ Metrics200Response }, OpenAPI.Clients.ApiResponse



Get TorchServe application metrics in prometheus format.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DefaultApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Names of metrics to filter | [default to nothing]

### Return type

[**Metrics200Response**](Metrics200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain; version=0.0.4; charset=utf-8, application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **ping**
> ping(_api::DefaultApi; _mediaType=nothing) -> Ping200Response, OpenAPI.Clients.ApiResponse <br/>
> ping(_api::DefaultApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Ping200Response }, OpenAPI.Clients.ApiResponse



Get TorchServe status.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Ping200Response**](Ping200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **predictions**
> predictions(_api::DefaultApi, model_name::String, body::String; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> predictions(_api::DefaultApi, response_stream::Channel, model_name::String, body::String; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse



Predictions entry point to get inference using default model version.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DefaultApi** | API context | 
**model_name** | **String**| Name of model. | [default to nothing]
**body** | **String****String**| Input data format is defined by each model. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **predictions_v1**
> predictions_v1(_api::DefaultApi, model_name::String, body::String; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> predictions_v1(_api::DefaultApi, response_stream::Channel, model_name::String, body::String; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse



Predictions entry point to get inference using default model version.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DefaultApi** | API context | 
**model_name** | **String**| Name of model. | [default to nothing]
**body** | **String****String**| Input data format is defined by each model. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **predictions_v2**
> predictions_v2(_api::DefaultApi, model_name::String, body::String; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> predictions_v2(_api::DefaultApi, response_stream::Channel, model_name::String, body::String; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse



Predictions entry point to get inference using default model version.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DefaultApi** | API context | 
**model_name** | **String**| Name of model. | [default to nothing]
**body** | **String****String**| Input data format is defined by each model. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **version_predictions**
> version_predictions(_api::DefaultApi, model_name::String, model_version::String, body::String; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> version_predictions(_api::DefaultApi, response_stream::Channel, model_name::String, model_version::String, body::String; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse



Predictions entry point to get inference using specific model version.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DefaultApi** | API context | 
**model_name** | **String**| Name of model. | [default to nothing]
**model_version** | **String**| Name of model version. | [default to nothing]
**body** | **String****String**| Input data format is defined by each model. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

