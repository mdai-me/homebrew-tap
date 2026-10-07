cask "mdai" do
  version "1.2.6"
  sha256 "10f06f270b32b59c53cfc2c8f8795ddbcb5836198c2bda477dc44e15038695b1"

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
