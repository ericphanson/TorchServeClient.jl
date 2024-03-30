# README

This client is generated via open api. First, with a running pytorch-serve server:
```
curl -X OPTIONS http://localhost:8080 > pytorch-serve.json
```
Then I modified the `operationIDs` to be unique (https://github.com/pytorch/serve/issues/3058).

Then run `run.sh` to generate the client.

This was done on March 31, 2024.
