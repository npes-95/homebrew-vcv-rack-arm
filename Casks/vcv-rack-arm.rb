cask "vcv-rack-arm" do
  version "2.3.0"
  sha256 "722c6b9d96924593db9a457575b60ff19a52005c730545f884a3ff4f5bf94407"

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
