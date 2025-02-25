# Pull it
cd kernel

# Build kernel
echo Oldconfig ...

make oldconfig

# No signing of debs
CONFIG_SYSTEM_TRUSTED_KEYS = ""

echo Building debs ...
nice make -j`nproc` bindeb-pkg

echo Done
