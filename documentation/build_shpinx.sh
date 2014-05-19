cd /stockage/qgis_master_class/documentation/
cd /stockage/SIA/github/qgis_master_class/documentation
sphinx-build -b latex ./rst/ ./rst/build/latex
cd ./rst/build/latex
make all-pdf
cd ../../../
