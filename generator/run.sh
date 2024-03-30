docker run --rm -v "${PWD}/..:/local" openapitools/openapi-generator-cli generate \
    -i /local/generator/pytorch-serve.json \
    -g julia-client \
    -c /local/generator/config.json \
    -o /local \
    --skip-validate-spec
