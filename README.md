# Julia API client for TorchServeClient

TorchServe is a flexible and easy to use tool for serving deep learning models

## Example

```julia
using TorchServeClient
using TorchServeClient: DefaultApi
using OpenAPI
using OpenAPI.Clients: Client
using JSON3

server_uri = "http://localhost:8080"

# First you may want to check you can access the server without this package:
run(`curl $server_uri/ping`)

# We then create an OpenAPI client
client = Client(server_uri)
api = DefaultApi(client)

# Now we can again ping it using the client:
ping(api)

img = read("wren.jpg")
out = predictions(api, "deeplabv3_resnet_101_eager", img; _mediaType="image/jpg");
json = JSON3.read(out[1])
```


## API Endpoints

Class | Method
------------ | -------------
*DefaultApi* | [**api_description**](docs/DefaultApi.md#api_description)<br/>**OPTIONS** /<br/>
*DefaultApi* | [**api_description_0**](docs/DefaultApi.md#api_description_0)<br/>**GET** /api-description<br/>
*DefaultApi* | [**metrics**](docs/DefaultApi.md#metrics)<br/>**GET** /metrics<br/>
*DefaultApi* | [**ping**](docs/DefaultApi.md#ping)<br/>**GET** /ping<br/>
*DefaultApi* | [**predictions**](docs/DefaultApi.md#predictions)<br/>**POST** /predictions/{model_name}<br/>
*DefaultApi* | [**predictions_v1**](docs/DefaultApi.md#predictions_v1)<br/>**POST** /v1/models/{model_name}:predict<br/>
*DefaultApi* | [**predictions_v2**](docs/DefaultApi.md#predictions_v2)<br/>**POST** /v2/models/{model_name}/infer<br/>
*DefaultApi* | [**version_predictions**](docs/DefaultApi.md#version_predictions)<br/>**POST** /predictions/{model_name}/{model_version}<br/>


## Models

 - [ApiDescription200Response](docs/ApiDescription200Response.md)
 - [ApiDescription500Response](docs/ApiDescription500Response.md)
 - [Metrics200Response](docs/Metrics200Response.md)
 - [Ping200Response](docs/Ping200Response.md)


<a id="authorization"></a>
## Authorization
Endpoints do not require authorization.
