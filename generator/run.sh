docker run --rm -v "${PWD}/..:/local" openapitools/openapi-generator-cli generate \
    -i /local/generator/pytorch-serve.json \
    -g julia-client \
    -o /local \
    --skip-validate-spec
