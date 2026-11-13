cask "mdai" do
  version "1.3.7"
  sha256 "e948fb174028f65c3fb5aa4b0f2a56bb2d02b0b96546889a89f07eda5ba4e1b6"

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
