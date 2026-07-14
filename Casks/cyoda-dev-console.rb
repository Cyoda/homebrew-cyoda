cask "cyoda-dev-console" do
  version "0.1.0"
  sha256 arm:   "a1e85f7ecb6b8f0a484bd88dd594d606e0c1c9cdcc12cddc331608b3e929d383",
         intel: "4d4ff300c203ab409698a00905ff7b015e0120d088ec6717bf8e3062615a35c5"

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
