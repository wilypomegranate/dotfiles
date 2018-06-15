# Add flutter SDK to path if exists
if [ -d $HOME/flutter/bin ]
then
  PATH=$HOME/flutter/bin:$PATH
fi

# Add dart SDK to path if exists
if [ -d $HOME/flutter/bin/cache/dart-sdk/bin ]
then
  PATH=$HOME/flutter/bin/cache/dart-sdk/bin:$PATH
fi
