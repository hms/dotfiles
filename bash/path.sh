export PATH=$HOME/.dotfiles/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH

# added for go
export PATH=$GOPATH/bin:$PATH:/usr/local/opt/go/libexec/bin

# Android SDK
if [ -d /opt/adt/sdk/platform-tools ]; then
  export PATH=$PATH:/opt/adt/sdk/platform-tools
fi

if [ -d /opt/adt/sdk/tools ]; then
  export PATH=$PATH:/opt/adt/sdk/tools
fi
