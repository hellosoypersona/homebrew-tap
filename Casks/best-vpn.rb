cask "best-vpn" do
  version "2.0.0"
  sha256 "6b2ed564b37e0c2befa01f06f35f9eea50fa66dc65b7736d00d6a684e65bc43c"

  url "https://github.com/hellosoypersona/best-vpn/releases/download/V2.0.0/Best.VPN.app.zip"
  name "Best VPN"
  desc "Fast and secure VPN utility"
  homepage "https://github.com/hellosoypersona/best-vpn"

  app "Best VPN.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Best VPN.app"]
  end
end
