echo "configure asdf to work in shell"
echo 'export ASDF_DATA_DIR="/home/stuart/.asdf"' >>~/.bashrc
echo 'export PATH="$ASDF_DATA_DIR/shims:$PATH"' >>~/.bashrc
echo ". <(asdf completion bash)" >>~/.bashrc

echo "Erlang dependancies"
#sudo apt-get -y install build-essential autoconf m4 libncurses5-dev libwxgtk3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk
echo "Install Erlang"
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git

echo "Finished Erlang"
echo "==============="

echo "Install Elixir"
asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git

echo "Finished Elixir"
echo "==============="

echo "Node dependancies"
sudo pacman -S install dirmngr gpg

echo "Install nodejs"
asdf plugin add nodejs

echo "Finished nodejs"
echo "==============="

echo "Install Python"
asdf plugin add python

echo "Finished python"
echo "==============="

echo "Install Ruby"
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
echo "Finished Ruby"
echo "==============="

echo "Install PHP"
asdf plugin add php https://github.com/asdf-community/asdf-php.git
echo "Finished PHP"
echo "==============="

echo "Install Rust"
asdf plugin add rust https://github.com/code-lever/asdf-rust.git
echo "Finished Rust"
echo "==============="
