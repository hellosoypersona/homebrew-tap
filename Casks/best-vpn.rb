cask "best-vpn" do
  version "2.0.0"
  sha256 "b555603d41c38c362e7ca847887d3ce2f4754523f29d42be02cfa0b8503b3c6d"

  url "https://github.com/hellosoypersona/best-vpn/releases/download/V2.0.0/Best.VPN.dmg"
  name "Best VPN"
  desc "Fast and secure VPN utility"
  homepage "https://github.com/hellosoypersona/best-vpn"

  app "Best VPN.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Best VPN.app"]
  end
end
