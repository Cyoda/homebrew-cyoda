cask "cyoda-dev-console" do
  version "0.3.0"
  sha256 arm:   "41c344a1819521fd789e44fdb4c4ea9b78304d81449a4869989a292a753c4a96",
         intel: "284bd733fe75d368261e6a09200b9cb46c305228b5d2125e7e0c69900dafc127"

  arch arm: "aarch64", intel: "x86_64"
  url "https://github.com/cyoda/cyoda-dev-console/releases/download/v#{version}/cyoda-dev-console_#{version}_#{arch}.dmg"

  name "Cyoda Dev Console"
  desc "Local file-based editor for Cyoda workflows"
  homepage "https://cyoda.com"

  auto_updates false
  depends_on macos: :monterey

  app "Cyoda Dev Console.app"

  zap trash: [
    "~/Library/Application Support/Cyoda Dev Console",
    "~/Library/Preferences/com.cyoda.devconsole.plist",
    "~/Library/Saved Application State/com.cyoda.devconsole.savedState",
  ]
end
