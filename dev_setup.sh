conda install -c conda-forge xorg-libxrandr xorg-libxinerama \
  xorg-libxcursor xorg-libxi glew mesalib -y
conda install -c anaconda mesa-libgl-cos6-x86_64 -y
conda install -c menpo glfw3 -y

pip install ninja

pip install commentjson contourpy cycler Cython fonttools joblib \
  kiwisolver lark-parser matplotlib numpy opencv-python packaging \
  pillow pybind11 pyembree pyparsing python-dateutil rtree \
  scikit-learn scipy six threadpoolctl tqdm trimesh

rm -rf build

cmake . -B build
cmake --build build --config RelWithDebInfo -j
