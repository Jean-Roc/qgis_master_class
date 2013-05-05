sphinx-build -b html ./build/html
sphinx-build -b latex ./build/latex
cd ./build/latex
make all-pdf
