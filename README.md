# RARS-J

This stack features the basic components to create a VoIP infrastructure to deliver voice, video, messanging and file sharing.
It uses Routr I/O as the SIP Server, RTPEngine for media relay and SIP.js as client. It also uses Jitsi Meet for video confer

## Requiremenets

- Docker and Compose

## Running the Stack

- Create required CONFIG directories
```bash
mkdir -p ~/.jitsi-meet-cfg/{web/letsencrypt,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri}
```

For Windows: 

```bash
echo web/letsencrypt,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri | % { mkdir "~/.jitsi-meet-cfg/$_" }
```

- Run `docker-compose -f docker-compose.yml -f jitsi.yml up`

Once all the services are up, open [Jitsi Meet](https://localhost:8443/FamousFirulette) and the [Demo Page](http://localhost:8080)
