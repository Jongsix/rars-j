# RARS-J

This stack features the basic components to create a VoIP infrastructure to deliver voice, video, messanging and file sharing.
It uses [Routr I/O](https://github.com/fonoster/routr) as the SIP Server, RTPEngine for media relay and SIP.js as client. It also uses Jitsi Meet for video conferencing.

<img src="https://raw.githubusercontent.com/psanders/rars-j/master/diagram.png" height="350" />

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
mkdir -p ~/.jitsi-meet-cfg/{config/jitsi,etc,web/letsencrypt,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri}
```

For Windows: 

```bash
echo config/jitsi,etc,web/letsencrypt,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri | % { mkdir "~/.jitsi-meet-cfg/$_" }
```

➌ Copy the example enviroment file `env_example` into `.env` and then update the variables `DOCKER_HOST_ADDRESS` and `CONFIG` to reflect your environment.

## Running the stack

Run the stack with the following command:

```bash
docker-compose -f docker-compose.yml -f jitsi.yml up
```

> Only use the jitsi.yml if you need jitsi meet in your mini voip infrastructure.

Once all the services are up, go to [Jitsi Meet](http://localhost:8000/FamousFirulette) to start the conference.
