cask "mdai" do
  version "1.3.5"
  sha256 "8070fd5b902d4cb4bb6ef82cea35fb8b129d91c67cd1ca67d84b3eacaee4b7b0"

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
