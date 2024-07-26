# session settings
ssl_session_timeout 1d;
ssl_session_cache shared:MozSSL:10m;  # about 40000 sessions
ssl_session_tickets off;

# ssl certs

ssl_certificate <%= certs_dir %>/<%= jitsi_domain %>_ecc/fullchain.cer;
ssl_certificate_key <%= certs_dir %>/<%= jitsi_domain %>_ecc/<%= jitsi_domain %>.key;
ssl_trusted_certificate <%= certs_dir %>/<%= jitsi_domain %>_ecc/ca.cer;

# protocols
# Mozilla Guideline v5.6, nginx 1.14.2, OpenSSL 1.1.1d, intermediate configuration, no OCSP
# https://ssl-config.mozilla.org/#server=nginx&version=1.14.2&config=intermediate&openssl=1.1.1d&ocsp=false&guideline=5.6
ssl_protocols TLSv1.2 TLSv1.3;
ssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384;
ssl_prefer_server_ciphers off;

# Diffie-Hellman parameter for DHE cipher suites
ssl_dhparam /etc/jitsi/web/defaults/ffdhe2048.txt;

# HSTS (ngx_http_headers_module is required) (63072000 seconds)

add_header Strict-Transport-Security "max-age=63072000" always;
