docker-compose down --remove-orphans
rm -rf ~/.jitsi-meet-cfg
mkdir -p ~/.jitsi-meet-cfg/{web/letsencrypt,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri}
docker-compose -f docker-compose.yml -f jitsi.yml up routr routr-bootstrap wphone mediaserver redis rtpengine rtpengine-middleware web prosody jicofo jvb
