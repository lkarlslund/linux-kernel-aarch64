# Pull it
# git clone --single-branch -b wip/x1e80100-6.14-rc4 https://github.com/jhovold/linux kernel
cd kernel

# Build kernel
echo Oldconfig ...
make oldconfig

echo Building debs ...
make bindeb-pkg

echo Done
