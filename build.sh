# Pull it
cd kernel

# Build kernel
echo Oldconfig ...

make oldconfig
scripts/config --set-str SYSTEM_TRUSTED_KEYS ""

# No signing of debs
# CONFIG_SYSTEM_TRUSTED_KEYS = ""

echo Building debs ...
nice make -j`nproc` bindeb-pkg

echo Done
