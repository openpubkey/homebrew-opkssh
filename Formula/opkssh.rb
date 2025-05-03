class Opkssh < Formula
    desc "opkssh (OpenPubKey SSH) - SSH with OpenID Connect"
    homepage "https://github.com/openpubkey/opkssh"
    opkssh_version = "0.6.1" # Replace with the latest version
    version opkssh_version

    url "https://github.com/openpubkey/opkssh/archive/refs/tags/v#{version}.tar.gz"
    sha256 "edb4b2ef3aaf9a16d409e92b27ed1467494edebedcca8ad51060916b175e401b"
    license "APACHE-2.0"

    # Bottle disabled for now 
    # bottle do
    #   root_url "https://github.com/openpubkey/opkssh/releases/download/v#{opkssh_version}"
    #   sha256 cellar: :any_skip_relocation, all: "1e642eccd1125aa7b76465fef2aa4283b1a853e4843c9d79dbce0fa60d25badc"
    # end

    depends_on "go@1.23" => :build
  
    def install
      system "go", "build", "-ldflags=-X main.Version=#{version}", "-o", bin/"opkssh"
    end
  
    test do
      system "#{bin}/opkssh", "--version"
    end
  end
  

