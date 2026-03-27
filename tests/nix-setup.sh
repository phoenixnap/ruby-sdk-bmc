if command -v bundix >/dev/null 2>&1; then
    echo "bundix is installed - continuing..."
else
    echo "bundix is missing! please add it to your nix configuration first."
    exit 1
fi

cp Gemfile Gemfile.old

cd ..
pwd=$(pwd)
cd tests

echo "getting parent directory: $pwd"

escaped_pwd=${pwd//\//\\\/}

echo "escaping directory: $escaped_pwd"

echo "turning relative path in Gemfile to absolute..."
sed -i "s/'..\//'$escaped_pwd\//g" Gemfile

echo "removing lockfile to refresh dependencies..."
rm -f Gemfile.lock

echo "removing gemset.nix if present..."
rm -f gemset.nix

echo "executing bundix..."
bundix -l

echo "entering shell..."
nix-shell

echo "exited shell..."
echo "undoing changes to Gemfile..."
mv Gemfile.old Gemfile