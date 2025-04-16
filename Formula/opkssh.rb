class Opkssh < Formula
    desc "opkssh (OpenPubKey SSH) - SSH with OpenID Connect"
    homepage "https://github.com/openpubkey/opkssh"
    opkssh_version = "0.5.1" # Replace with the latest version
    version opkssh_version

    url "https://github.com/openpubkey/opkssh/archive/refs/tags/v#{version}.tar.gz"
    sha256 "e178a1a57715dfaa2128ff4cfb70f4269243d0e246dcd67a66e050d726e54a49"
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
  

