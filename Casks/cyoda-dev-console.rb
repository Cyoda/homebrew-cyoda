cask "cyoda-dev-console" do
  version "0.4.0"
  sha256 arm:   "4c8e95df76c6705910e8c5f8aa45af92bef900be9415f3a7c062a5634e90d7cc",
         intel: "598656c271b2b15d4befedd5d0a4c843cecedb5662785c125f6572b434d98908"

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
