# see {https://deno.land/manual@v1.13.2/contributing/building_from_source#building-codedenocode-from-source}

# install Rust
apt install build-essential cmake
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -y

# get deno installer
git clone --recurse-submodules https://github.com/denoland/deno.git

cd deno
cargo build -vv