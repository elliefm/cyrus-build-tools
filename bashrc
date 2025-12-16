use-cyruslibs() {
    export CYRUSLIBS=$($CYRUS_BUILD_TOOLS/cyrus-cyruslibs $1)
    export CYRUSLIBS_PKGCONFIG=$CYRUSLIBS/lib/pkgconfig
    export PKG_CONFIG_PATH=$CYRUSLIBS_PKGCONFIG
    echo "using cyruslibs from $CYRUSLIBS"
}
use-cyruslibs >/dev/null # with no version argument, uses latest

alias with-cyruslibs='export PKG_CONFIG_PATH=$CYRUSLIBS_PKGCONFIG'
alias without-cyruslibs='unset PKG_CONFIG_PATH'

alias distcheck='PATH=$CYRUSLIBS/bin:$PATH make distcheck'
