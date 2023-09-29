cask "vcv-rack-arm" do
  version "2.4.1"
  sha256 "e9d17d8c123877ea968dd49956335c448326479c91bfd0a18d6ad589c9fd13bd"

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
