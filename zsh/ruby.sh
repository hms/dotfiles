# Support auto switching rubies
export THOR_SILENCE_DEPRECIATION

# For parallel tests
export PARALLEL_TEST_FIRST_IS_1=true

# DEVELOPMENT settings
export STAGED_UPLOAD_EMAIL=false
export SO5_DATABASE_PASSWORD=postgres

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# For Auto SSH Certs
export ACME_DIRECTORY_URL='https://anchor.dev/hms/localhost/x509/ca/acme'
export HTTPS_PORT='44342'
export SERVER_NAMES='so5.lcl.host,so5.localhost'
export ACME_KID=aae_Vs71fbEhziyoVkB_2kD8HYzSfu0gAxiIyuLh0D8JUxei
export ACME_HMAC_KEY=Ci1-LLCuUnz3Fesm5kpRwiRZB642Tf96KuJbpcI1zOTBHUcGvw_azCRKv_G6Cf1k

# For sqlite
export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig"
