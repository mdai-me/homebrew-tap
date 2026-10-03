cask "mdai" do
  version "1.2.4"
  sha256 "1e130e90a302dc44a8e541052e8d0a3a0acb6dd935d2f69272664cd9e6b4dc71"

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
