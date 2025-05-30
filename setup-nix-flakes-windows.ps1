# PowerShell Script
# This script installs WSL, Ubuntu, Nix, and enables flakes inside WSL
Write-Host "🚀 Starting WSL + Nix + Flakes setup..." -ForegroundColor Cyan

# Step 1: Enable WSL
Write-Host "🔧 Enabling WSL & Virtual Machine Platform..." -ForegroundColor Yellow
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Step 2: Install WSL with Ubuntu (if not already installed)
Write-Host "📦 Installing Ubuntu via WSL..." -ForegroundColor Yellow
wsl --install -d Ubuntu

Write-Host "`n✅ WSL & Ubuntu installation complete. Please restart your machine if this is your first time installing WSL." -ForegroundColor Green
Pause

# Step 3: Install Nix inside WSL
$script = @'
echo "🌀 Installing Nix..."
sh <(curl -L https://nixos.org/nix/install) --no-daemon

echo "✅ Enabling Nix in shell..."
. ~/.nix-profile/etc/profile.d/nix.sh

echo "⚙️ Enabling flakes in nix.conf..."
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf

echo "✅ Done! You can now use flakes. Try: nix --version"
'@

Write-Host "`n💻 Now entering WSL to configure Nix + Flakes..." -ForegroundColor Cyan
wsl bash -c "$script"

Write-Host "`n🎉 All done! Nix + Flakes are ready inside WSL." -ForegroundColor Green
Pause
