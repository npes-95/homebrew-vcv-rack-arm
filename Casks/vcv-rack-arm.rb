cask "vcv-rack-arm" do
  version "2.4.1"
  sha256 "dcc9f0dec531b500bc06b54966f019f39fdd78263e9ef597b118ec9178fa72f9"

  url "https://vcvrack.com/downloads/RackFree-#{version}-mac-arm64.pkg"
  name "VCV Rack"
  desc "Open-source virtual modular synthesizer"
  homepage "https://vcvrack.com/"

  livecheck do
    url "https://raw.githubusercontent.com/VCVRack/Rack/v#{version.major}/CHANGELOG.md"
    regex(/###\s(\d+(?:\.\d+)+)/i)
  end

  pkg "RackFree-#{version}-mac-arm64.pkg"

  uninstall pkgutil: "com.vcvrack.rack"
end
