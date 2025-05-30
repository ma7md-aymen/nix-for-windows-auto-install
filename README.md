# ⚡ Windows Nix + Flakes Auto Setup

This project provides a simple PowerShell script to **automatically set up WSL + Ubuntu + Nix + Flakes** on Windows with minimal effort.

> 🧠 Ideal for developers and students who want to use the power of Nix from Windows via WSL.

---

## 📦 What This Script Does

1. 🔧 Enables WSL and Virtual Machine Platform on Windows  
2. 📥 Installs Ubuntu via WSL  
3. 🌀 Installs [Nix package manager](https://nixos.org) inside WSL  
4. ✨ Enables Flakes (`nix-command flakes`) automatically  
5. ✅ Verifies everything is ready for development

---

## 🚀 How to Use

### ✅ Step 1: Download the script

Clone this repo or download the script directly:

```powershell
git clone https://github.com/your-username/windows-nix-flakes-setup.git
cd windows-nix-flakes-setup
```

---

### 🔒 Step 2: Run the script as **Administrator**

Make sure you're in PowerShell **with Admin rights**, then run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
.\setup-nix-flakes-windows.ps1
```
---

🕒 **First time using WSL?** You may need to restart your PC after Ubuntu installation. The script will tell you when.
