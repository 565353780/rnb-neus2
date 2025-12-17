cd ..
git clone https://github.com/RobinBruneau/RNb-NeuS2.git rnb2

conda install -c conda-forge xorg-libxrandr xorg-libxinerama \
  xorg-libxcursor xorg-libxi glew mesalib

cd rnb2

pip install -r requirements.txt

rm -rf build

cmake . -B build
cmake --build build --config RelWithDebInfo -j
