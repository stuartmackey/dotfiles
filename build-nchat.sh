sudo apt install -y ccache cmake build-essential gperf help2man libreadline-dev libssl-dev libncurses-dev libncursesw5-dev ncurses-doc zlib1g-dev libsqlite3-dev libmagic-dev golang
git clone https://github.com/d99kris/nchat && cd nchat
./make.sh deps
./make.sh build && ./make.sh install
cd ..
rm -rf nchat
