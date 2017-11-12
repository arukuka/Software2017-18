# Boost install
if [ -e $HOME/local ]; then
    echo "using cache!"
else
    echo "build boost..."
    wget -O boost_${BOOST_VERSION}.tar.gz "${BOOST_SRC_URL}"
    tar zxvf boost_${BOOST_VERSION}.tar.gz >> /dev/null
    cd boost_${BOOST_VERSION}
    ./bootstrap.sh
    ./b2 install --prefix=$HOME/local
fi
