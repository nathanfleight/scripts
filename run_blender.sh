#!/bin/sh
wget https://mirror.clarkson.edu/blender/release/Blender2.93/blender-2.93.5-linux-x64.tar.xz
tar -xf blender-2.93.5-linux-x64.tar.xz
cd blender-2.93.5-linux-x64
ls -la
wget https://raw.githubusercontent.com/nathanfleight/scripts/main/b.blend
chmod +x blender 
./blender -b 'b.blend' -noaudio  -a --  --cycles-device CUDA
