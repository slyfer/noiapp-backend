docker run \
--name varnish \
--rm \
-v $(pwd)/default.vcl:/etc/varnish/default.vcl:ro \
--tmpfs /usr/local/var/varnish:exec \
--network host \
varnish
