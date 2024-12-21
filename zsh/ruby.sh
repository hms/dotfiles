export RUBY_YJIT_ENABLE=1
export MISE_RUBY_BUILD_OPTS="--with-jemalloc"
export RAILS_MAX_THREAD=25

# Support auto switching rubies
export THOR_SILENCE_DEPRECIATION

# For parallel tests
export PARALLEL_TEST_FIRST_IS_1=true
export PARALLEL_TEST_PROCESSORS=12

# DEVELOPMENT settings
# export FAIL_FAST=1
export STAGED_UPLOAD_EMAIL=false
export SO5_DATABASE_PASSWORD=postgres
export UNLOGGED_TEST_TABLES=true

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# For Auto SSH Certs
# export ACME_CONTACT="hal.spitz@gmail.com"
# export ACME_DIRECTORY_URL="https://anchor.dev/hms/localhost/x509/ca/acme"
# export ACME_KID="aae_Imr-36hS-9iv8Pp7KAwIRD2Z0NfRuhkpvKQfE7dTD4HJ"
# export ACME_HMAC_KEY="aNAm1tty5igEwg-OmQEpnEVA3wL9wTHlAVhEtC5TTmbzzgvv2ByI32UT486HZv09"
# export HTTPS_PORT="44356"
# export SERVER_NAMES="so5.lcl.host,so5.localhost"


# For sqlite
install_sqlite() {
  export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"
  export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig"
}
