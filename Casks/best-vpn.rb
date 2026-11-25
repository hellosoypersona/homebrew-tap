cask "best-vpn" do
  version "2.0.0"
  sha256 "ecb88f3860943d73752d0f2ce76cc048704eefbcb099a51ad1ebb3f6b6391cae"

  url "https://github.com/hellosoypersona/best-vpn/releases/download/V2.0.0/Best.VPN.zip"
  name "Best VPN"
  desc "Fast and secure VPN utility"
  homepage "https://github.com/hellosoypersona/best-vpn"

  app "Best VPN.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Best VPN.app"]
  end
end
