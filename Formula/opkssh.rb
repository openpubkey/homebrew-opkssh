class Opkssh < Formula
    desc "opkssh (OpenPubKey SSH) - SSH with OpenID Connect"
    homepage "https://github.com/openpubkey/opkssh"
    url "https://github.com/openpubkey/opkssh/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "b0915465633f6a14244fafac5d0d8a74eec5ebf40f9c2eeb542f2d8f510dc72f"
    license "APACHE-2.0"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"opkssh", "./opkssh"
    end
  
    test do
      system "#{bin}/opkssh", "--version"
    end
  end
  

