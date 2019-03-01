#/bin/bash

# Make sure we have everything we need
: "${FRONTEND_CERT:?FRONTEND_CERT must be set}"
: "${FRONTEND_CERT_PATH:?FRONTEND_CERT_PATH must be set}"
: "${FRONTEND_PRIVATE_KEY:?FRONTEND_PRIVATE_KEY must be set}"
: "${FRONTEND_PRIVATE_KEY_PATH:?FRONTEND_PRIVATE_KEY_PATH must be set}"
: "${FRONTEND_PRIVATE_SIGNING_KEY:?FRONTEND_PRIVATE_SIGNING_KEY must be set}"
: "${FRONTEND_PRIVATE_SIGNING_KEY_PATH:?FRONTEND_PRIVATE_SIGNING_KEY_PATH must be set}"
: "${FRONTEND_PUBLIC_SIGNING_KEY:?FRONTEND_PUBLIC_SIGNING_KEY must be set}"
: "${FRONTEND_PUBLIC_SIGNING_KEY_PATH:?FRONTEND_PUBLIC_SIGNING_KEY_PATH must be set}"
: "${CA_CERT:?CA_CERT must be set}"
: "${CA_CERT_PATH:?CA_CERT_PATH must be set}"
: "${CA_PRIVATE_KEY:?CA_PRIVATE_KEY must be set}"
: "${CA_PRIVATE_KEY_PATH:?CA_PRIVATE_KEY_PATH must be set}"

# Decode and write to file
echo "$FRONTEND_CERT" | base64 -d > $FRONTEND_CERT_PATH
echo "$FRONTEND_PRIVATE_KEY" | base64 -d > $FRONTEND_PRIVATE_KEY_PATH
echo "$FRONTEND_PRIVATE_SIGNING_KEY" | base64 -d > $FRONTEND_PRIVATE_SIGNING_KEY_PATH
echo "$FRONTEND_PUBLIC_SIGNING_KEY" | base64 -d > $FRONTEND_PUBLIC_SIGNING_KEY_PATH
echo "$CA_CERT" | base64 -d > $CA_CERT_PATH
echo "$CA_PRIVATE_KEY" | base64 -d > $CA_PRIVATE_KEY_PATH
