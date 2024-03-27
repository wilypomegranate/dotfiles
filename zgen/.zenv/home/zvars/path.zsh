# Put in .nimble for nim before other overrides
PATH=$HOME/.nimble/bin:$PATH

# Put in .cabal for haskell before other overrides
PATH=$HOME/.cabal/bin:$PATH

# Put in .cargo for rust before other overrides
PATH=$HOME/.cargo/bin:$PATH

# Put in .dotnet tools
PATH=$HOME/.dotnet/tools:$PATH

# Put home .local bin dir $n front of path for pipsi
PATH=$HOME/.local/bin:$PATH

# Put home bin dir as first in path by default
PATH=$HOME/bin:$PATH
