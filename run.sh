tee -a /root/frpc.ini <<EOF
[common]
user = $CLIENT_USER
server_addr = vietsmart.io
server_port = 3000
authentication_method = oidc

oidc_client_id = $CLIENT_ID
oidc_client_secret = $CLIENT_SECRET
oidc_token_endpoint_url = https://auth.vietsmart.io/oauth2/token
oidc_audience = ""
oidc_additional_audience = ""

[web]
type = http
local_port = $CLIENT_PORT
subdomain = $CLIENT_USER
EOF
/usr/bin/frpc -c /root/frpc.ini