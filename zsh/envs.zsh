# ----------- Directories -----------
export SCRIPTS=$XDG_CONFIG_HOME/scripts
export ZPLUGINS=$ZDOTDIR/plugins

# ----------- Pyenv -----------
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig:$PKG_CONFIG_PATH"

export LDFLAGS="-L/opt/homebrew/opt/zlib/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig:$PKG_CONFIG_PATH"

export PATH="/opt/homebrew/opt/tcl-tk@8/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/tcl-tk@8/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/tcl-tk@8/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/tcl-tk@8/lib/pkgconfig:$PKG_CONFIG_PATH"
