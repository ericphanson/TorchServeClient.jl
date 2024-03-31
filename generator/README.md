# README

This client is generated via open api. First, with a running pytorch-serve server:
```
curl -X OPTIONS http://localhost:8080 > pytorch-serve.json
```
Then I modified the `operationIDs` to be unique (https://github.com/pytorch/serve/issues/3058).

Then run `run.sh` to generate the client.

This was done on March 31, 2024.

Then I find-and-replaced to change all `body::String` to `body`, since the type annotation prevents uploading non-string data (which is essential). I also removed the unused TimeZones dependency.
