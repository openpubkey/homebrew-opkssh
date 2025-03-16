class Opkssh < Formula
    desc "opkssh (OpenPubKey SSH) - SSH with OpenID Connect"
    homepage "https://github.com/openpubkey/opkssh"
    version "0.2.1" # Replace with the latest version

    url "https://github.com/openpubkey/opkssh/archive/refs/tags/v#{version}.tar.gz"
    sha256 "e36c49480a08d05d01bc3534f1e31a76947a5f1acb96e48139e745d30c13c8de"
    license "APACHE-2.0"
    depends_on "go@1.23" => :build
  
    def install
      system "go", "-ldflags", "-X main.Version=#{version}", "build", "-o", bin/"opkssh"
    end
  
    test do
      system "#{bin}/opkssh", "--version"
    end
  end
  

