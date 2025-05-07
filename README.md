# Fedora Configuration and Setup

This repository contains my personal Fedora Linux configuration files and a setup script to automate the installation of all packages and applications I use.

## 📦 What's Included

- `fedora-packages.txt`: List of RPM packages installed using DNF.
- `flatpak-apps.txt`: List of Flatpak applications.
- `install.sh`: Shell script to automate the reinstallation of all apps and dependencies.
- Other dotfiles and system config files can be added here (e.g., `.bashrc`, `.vimrc`, `.config/` folders).

## 🚀 How to Set Up a New Fedora System

1. **Clone this repository:**
```bash
   git clone https://github.com/yourusername/fedora-config.git
   cd fedora-config
```

2. **Make the install script executable**
```bash
chmod +x install.sh
```

3. **Run the install script**
```bash
./install.sh
```

## 📋 What the Script Does

This script will:

- 🔄 Update your Fedora system
- 📦 Install all RPM packages listed in `fedora-packages.txt`
- 🌐 Install Flatpak and any applications listed in `flatpak-apps.txt`

---

## 🔧 Customization

- ➕ To **add or remove RPM packages**, edit the `fedora-packages.txt` file.
- 🎯 To **change Flatpak applications**, modify the `flatpak-apps.txt` file.
- 🛠️ You can also include your GNOME or shell config files (like `.bashrc`, `.vimrc`, or `.config/`) in this repository, and extend `install.sh` to copy or symlink them.

---

## ✅ Compatibility

Tested on:

- Fedora Workstation **39+**
- GNOME **desktop environment**

---

## 📌 Notes

- Make sure you're connected to the **internet** before running the script.
- Some apps may need **manual setup** or permissions after installation (e.g., GNOME extensions, browser sign-ins, etc.).

