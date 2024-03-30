# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct DefaultApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `DefaultApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ DefaultApi }) = "http://localhost"

const _returntypes_api_description_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => ApiDescription200Response,
    Regex("^" * replace("500", "x"=>".") * "\$") => ApiDescription500Response,
)

function _oacinternal_api_description(_api::DefaultApi; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "OPTIONS", _returntypes_api_description_DefaultApi, "/", [])
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get openapi description.

Params:

Return: ApiDescription200Response, OpenAPI.Clients.ApiResponse
"""
function api_description(_api::DefaultApi; _mediaType=nothing)
    _ctx = _oacinternal_api_description(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function api_description(_api::DefaultApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _oacinternal_api_description(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_api_description_0_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => ApiDescription200Response,
    Regex("^" * replace("500", "x"=>".") * "\$") => ApiDescription500Response,
)

function _oacinternal_api_description_0(_api::DefaultApi; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_api_description_0_DefaultApi, "/api-description", [])
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get openapi description.

Params:

Return: ApiDescription200Response, OpenAPI.Clients.ApiResponse
"""
function api_description_0(_api::DefaultApi; _mediaType=nothing)
    _ctx = _oacinternal_api_description_0(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function api_description_0(_api::DefaultApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _oacinternal_api_description_0(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_metrics_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Metrics200Response,
    Regex("^" * replace("500", "x"=>".") * "\$") => ApiDescription500Response,
)

function _oacinternal_metrics(_api::DefaultApi; name=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_metrics_DefaultApi, "/metrics", [])
    OpenAPI.Clients.set_param(_ctx.query, "name[]", name)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["text/plain; version=0.0.4; charset=utf-8", "application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get TorchServe application metrics in prometheus format.

Params:
- name::String

Return: Metrics200Response, OpenAPI.Clients.ApiResponse
"""
function metrics(_api::DefaultApi; name=nothing, _mediaType=nothing)
    _ctx = _oacinternal_metrics(_api; name=name, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function metrics(_api::DefaultApi, response_stream::Channel; name=nothing, _mediaType=nothing)
    _ctx = _oacinternal_metrics(_api; name=name, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_ping_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Ping200Response,
    Regex("^" * replace("500", "x"=>".") * "\$") => ApiDescription500Response,
)

function _oacinternal_ping(_api::DefaultApi; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_ping_DefaultApi, "/ping", [])
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get TorchServe status.

Params:

Return: Ping200Response, OpenAPI.Clients.ApiResponse
"""
function ping(_api::DefaultApi; _mediaType=nothing)
    _ctx = _oacinternal_ping(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function ping(_api::DefaultApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _oacinternal_ping(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_predictions_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => String,
    Regex("^" * replace("404", "x"=>".") * "\$") => ApiDescription500Response,
    Regex("^" * replace("500", "x"=>".") * "\$") => ApiDescription500Response,
    Regex("^" * replace("503", "x"=>".") * "\$") => ApiDescription500Response,
)

function _oacinternal_predictions(_api::DefaultApi, model_name::String, body::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_predictions_DefaultApi, "/v1/models/{model_name}:predict", [], body)
    OpenAPI.Clients.set_param(_ctx.path, "model_name", model_name)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["*/*", "application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Predictions entry point to get inference using default model version.

Params:
- model_name::String (required)
- body::String (required)

Return: String, OpenAPI.Clients.ApiResponse
"""
function predictions(_api::DefaultApi, model_name::String, body::String; _mediaType=nothing)
    _ctx = _oacinternal_predictions(_api, model_name, body; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function predictions(_api::DefaultApi, response_stream::Channel, model_name::String, body::String; _mediaType=nothing)
    _ctx = _oacinternal_predictions(_api, model_name, body; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_predictions_0_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => String,
    Regex("^" * replace("404", "x"=>".") * "\$") => ApiDescription500Response,
    Regex("^" * replace("500", "x"=>".") * "\$") => ApiDescription500Response,
    Regex("^" * replace("503", "x"=>".") * "\$") => ApiDescription500Response,
)

function _oacinternal_predictions_0(_api::DefaultApi, model_name::String, body::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_predictions_0_DefaultApi, "/v2/models/{model_name}/infer", [], body)
    OpenAPI.Clients.set_param(_ctx.path, "model_name", model_name)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["*/*", "application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Predictions entry point to get inference using default model version.

Params:
- model_name::String (required)
- body::String (required)

Return: String, OpenAPI.Clients.ApiResponse
"""
function predictions_0(_api::DefaultApi, model_name::String, body::String; _mediaType=nothing)
    _ctx = _oacinternal_predictions_0(_api, model_name, body; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function predictions_0(_api::DefaultApi, response_stream::Channel, model_name::String, body::String; _mediaType=nothing)
    _ctx = _oacinternal_predictions_0(_api, model_name, body; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_predictions_1_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => String,
    Regex("^" * replace("404", "x"=>".") * "\$") => ApiDescription500Response,
    Regex("^" * replace("500", "x"=>".") * "\$") => ApiDescription500Response,
    Regex("^" * replace("503", "x"=>".") * "\$") => ApiDescription500Response,
)

function _oacinternal_predictions_1(_api::DefaultApi, model_name::String, body::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_predictions_1_DefaultApi, "/predictions/{model_name}", [], body)
    OpenAPI.Clients.set_param(_ctx.path, "model_name", model_name)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["*/*", "application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Predictions entry point to get inference using default model version.

Params:
- model_name::String (required)
- body::String (required)

Return: String, OpenAPI.Clients.ApiResponse
"""
function predictions_1(_api::DefaultApi, model_name::String, body::String; _mediaType=nothing)
    _ctx = _oacinternal_predictions_1(_api, model_name, body; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function predictions_1(_api::DefaultApi, response_stream::Channel, model_name::String, body::String; _mediaType=nothing)
    _ctx = _oacinternal_predictions_1(_api, model_name, body; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_version_predictions_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => String,
    Regex("^" * replace("404", "x"=>".") * "\$") => ApiDescription500Response,
    Regex("^" * replace("500", "x"=>".") * "\$") => ApiDescription500Response,
    Regex("^" * replace("503", "x"=>".") * "\$") => ApiDescription500Response,
)

function _oacinternal_version_predictions(_api::DefaultApi, model_name::String, model_version::String, body::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_version_predictions_DefaultApi, "/predictions/{model_name}/{model_version}", [], body)
    OpenAPI.Clients.set_param(_ctx.path, "model_name", model_name)  # type String
    OpenAPI.Clients.set_param(_ctx.path, "model_version", model_version)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["*/*", "application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Predictions entry point to get inference using specific model version.

Params:
- model_name::String (required)
- model_version::String (required)
- body::String (required)

Return: String, OpenAPI.Clients.ApiResponse
"""
function version_predictions(_api::DefaultApi, model_name::String, model_version::String, body::String; _mediaType=nothing)
    _ctx = _oacinternal_version_predictions(_api, model_name, model_version, body; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function version_predictions(_api::DefaultApi, response_stream::Channel, model_name::String, model_version::String, body::String; _mediaType=nothing)
    _ctx = _oacinternal_version_predictions(_api, model_name, model_version, body; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export api_description
export api_description_0
export metrics
export ping
export predictions
export predictions_0
export predictions_1
export version_predictions
