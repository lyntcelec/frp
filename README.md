### Custom FRP

## Push to Docker Hub

# build image

```
docker build -t tunneling -f dockerfiles/Dockerfile-for-frpc .
```

# Run container

```
docker run --network=host --env CLIENT_USER="myhome" --env CLIENT_PORT=8123 --env CLIENT_ID="a7a5de1692994b53a81b853143f77366" --env CLIENT_SECRET="707ea3b3ab7d4ec297fe487868bd4d6c" --restart=unless-stopped --name tunneling -it tunneling sh -c 'exec /root/run.sh'
```

# commit image

Use `docker ps` to check container id, eg: `0cc60587455c`

```
docker commit 0cc60587455c 151191/tunneling:latest
docker push 151191/tunneling:latest
```

## Pull to Docker Hub

```
docker run --network=host --env CLIENT_USER="myhome" --env CLIENT_PORT=8123 --env CLIENT_ID="a7a5de1692994b53a81b853143f77366" --env CLIENT_SECRET="707ea3b3ab7d4ec297fe487868bd4d6c" --restart=unless-stopped --name tunneling -it 151191/tunneling sh -c 'exec /root/run.sh'
```

### Version list:

```
151191/tunneling:latest : x64, x86
151191/tunneling:arm32 : ARM32, Orange Pi PC +
```
