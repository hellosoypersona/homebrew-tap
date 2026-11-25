cask "best-vpn" do
  version "1.0.0"
  sha256 "5597d88346b763c5bc319c092b937095b708552e55530589560ecef3097d6b0f"

  url "https://github.com/hellosoypersona/best-vpn/releases/download/V1.0/Best.VPN.dmg"
  name "Best VPN"
  desc "Fast and secure VPN utility"
  homepage "https://github.com"

  app "Best VPN.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Best VPN.app"]
  end
end
