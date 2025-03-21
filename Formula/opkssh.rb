class Opkssh < Formula
    desc "opkssh (OpenPubKey SSH) - SSH with OpenID Connect"
    homepage "https://github.com/openpubkey/opkssh"
    version "0.2.2" # Replace with the latest version

    url "https://github.com/openpubkey/opkssh/archive/refs/tags/v#{version}.tar.gz"
    sha256 "fa5ac8a956837c9f2959d08720dbf31b3713ebafdf8b47ec9408e8a16605d080"
    license "APACHE-2.0"
    depends_on "go@1.23" => :build
  
    def install
      system "go", "build", "-ldflags=-X main.Version=#{version}", "-o", bin/"opkssh"
    end
  
    test do
      system "#{bin}/opkssh", "--version"
    end
  end
  

