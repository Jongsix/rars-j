# RARS-J

This stack features the basic components to create a VoIP infrastructure to deliver voice, video, messanging and file sharing.
It uses [Routr I/O](https://github.com/fonoster/routr) as the SIP Server, RTPEngine for media relay and SIP.js as client. It also uses Jitsi Meet for video conferencing.

> It is also possible to use Janus instead of Jitsi Meet

## Requirements

- Docker and Docker Compose
- Git (optional)

## Setting the conditions

➊ Download the project

```bash
git clone https://github.com/psanders/rars-j
```

➋  Create required CONFIG directories

```bash
mkdir -p ~/.jitsi-meet-cfg/{web/letsencrypt,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri}
```

For Windows: 

```bash
echo web/letsencrypt,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri | % { mkdir "~/.jitsi-meet-cfg/$_" }
```

➌ Update the `EXTERN_ADDR` and `DOCKER_HOST_ADDRESS` at file `.env` to reflect your enviroment. 

## Running the stack

Run the stack with the following command:

```bash
docker-compose -f docker-compose.yml -f jitsi.yml up
```

Once all the services are up open [Jitsi Meet](https://localhost:8443/FamousFirulette) and the [demo page](http://localhost:8080)
