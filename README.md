# publicapi
vsuite public api in OpenAPI 3 format

# local dev
1. install docker
2. `chmod 755 start_local.sh`
3. `chmod 755 kill_all_local.sh`

`./start_local.sh` will expose redoc UI on localhost port 80. It will also mount swagger.yml as a volume, so save changes to config file, refresh localhost port 80 and you will see the changes

`./kill_all_local.sh` will kill all the containers set running by `./start_local.sh`. Use when finished local dev
