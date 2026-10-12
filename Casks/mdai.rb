cask "mdai" do
  version "1.2.8"
  sha256 "4c9847d5d68b046925ba49d55902ae7e6d5e334be26d6adcf2f421e54faefdf4"

  url "https://dl.mdai.me/mdai_#{version}_universal.dmg"
  name "mdai"
  desc "Desktop Markdown editor"
  homepage "https://mdai.me/"

  livecheck do
    url "https://dl.mdai.me/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "mdai.app"

  zap trash: [
    "~/Library/Application Support/com.goranjovanovic.mdai",
    "~/Library/Caches/com.goranjovanovic.mdai",
    "~/Library/Preferences/com.goranjovanovic.mdai.plist",
    "~/Library/WebKit/com.goranjovanovic.mdai",
  ]
end
