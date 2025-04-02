# homebrew-opkssh
Homebrew tap for opkssh

## To add new release run

Update version in opkssh.rb

Update SHA256 hash in tap

To generate SHA256 hash
```bash
curl -L https://github.com/openpubkey/opkssh/archive/refs/tags/v{VERSION}.tar.gz | sha256sum
```