git clone https://github.com/FabioGrosso/AMRIC-SZ_SLE.git SZ_SLE
cd SZ_SLE
mkdir install
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=$AMRIC_HOME/SZ_SLE/install -DBUILD_H5Z_FILTER=ON ..
export SZ_SLE_HOME=$AMRIC_HOME/SZ_SLE/install
make -j 8
make install 

cd $AMRIC_HOME
git clone https://github.com/FabioGrosso/AMRIC-newSZ3.git SZ3
cd SZ3
mkdir install
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=$AMRIC_HOME/SZ3/install -DBUILD_H5Z_FILTER=ON ..
export SZ3_HOME=$AMRIC_HOME/SZ3/install
make -j 8
make install 

cd $AMRIC_HOME
git clone https://github.com/FabioGrosso/AMRIC-orisz3.git orisz3
cd orisz3
mkdir install
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=$AMRIC_HOME/orisz3/install -DBUILD_H5Z_FILTER=ON ..
export ORI_SZ3_HOME=$AMRIC_HOME/orisz3/install 
make -j 8
make install
cd $AMRIC_HOME 

echo export SZ_SLE_HOME=$AMRIC_HOME/SZ_SLE/install >> ~/.bashrc
echo export SZ3_HOME=$AMRIC_HOME/SZ3/install >> ~/.bashrc
echo export ORI_SZ3_HOME=$AMRIC_HOME/orisz3/install >> ~/.bashrc
echo "# end of AMRIC env" >> ~/.bashrc
