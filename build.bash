sudo apt-get install -y vim git tmux
git clone http://git-wip-us.apache.org/repos/asf/mesos.git

# Change working directory.
cd mesos

git checkout 0.20.0

# Bootstrap (***Skip this if you are not building from git repo***).
./bootstrap

# Configure and build.
mkdir build
cd build
../configure
make

# Run test suite.
make check

# Install (***Optional***).
make install
