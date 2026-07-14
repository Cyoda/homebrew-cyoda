cask "cyoda-dev-console" do
  version "0.2.0"
  sha256 arm:   "48cb3170aca8cc99d71978e7d03dc46096d839b1d461adfbafe73644eb2e5803",
         intel: "49619c0490b313bb17c4d9826392e3f2b9df7ea3fa0958587f5cd4b43a1ec815"

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
