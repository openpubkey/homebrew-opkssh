class Opkssh < Formula
    desc "opkssh (OpenPubKey SSH) - SSH with OpenID Connect"
    homepage "https://github.com/openpubkey/opkssh"
    url "https://github.com/openpubkey/opkssh/archive/refs/tags/v0.2.1.tar.gz"
    sha256 "e36c49480a08d05d01bc3534f1e31a76947a5f1acb96e48139e745d30c13c8de"
    license "APACHE-2.0"
    depends_on "go@1.23" => :build
  
    def install
      system "go", "build", "-o", bin/"opkssh"
    end
  
    test do
      system "#{bin}/opkssh", "--version"
    end
  end
  

