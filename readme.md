<div align="center">

```
███████╗      ███████╗ ██████╗  ██████╗██╗███████╗████████╗██╗   ██╗
██╔════╝      ██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝╚██╗ ██╔╝
█████╗  █████╗███████╗██║   ██║██║     ██║█████╗     ██║    ╚████╔╝ 
██╔══╝  ╚════╝╚════██║██║   ██║██║     ██║██╔══╝     ██║     ╚██╔╝  
██║           ███████║╚██████╔╝╚██████╗██║███████╗   ██║      ██║   
╚═╝           ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝      ╚═╝  
```

# ☠ F-SOCIETY TOOLS INSTALLER ☠
### The Ultimate Penetration Testing & Cyber Security Toolkit Framework
**Crafted with precision by ATHEX BLACK HAT**

---

![Version](https://img.shields.io/badge/Version-4.0-red?style=for-the-badge&logo=github)
![Tools](https://img.shields.io/badge/Total_Tools-10,000+-brightgreen?style=for-the-badge&logo=kalilinux)
![Platform](https://img.shields.io/badge/Platform-Linux_|_Termux_|_WSL-blue?style=for-the-badge&logo=linux)
![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)
![Free](https://img.shields.io/badge/Price-Free_%26_Open_Source-success?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)
![Maintained](https://img.shields.io/badge/Maintained-Yes-brightgreen?style=for-the-badge)
</div>

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Architecture](#-architecture)
- [Key Features](#-key-features)
- [Tool Categories](#-tool-categories)
- [Platform Support](#-platform-support)
- [Compatibility Matrix](#-compatibility-matrix)
- [Installation Guide](#-installation-guide)
- [Security Architecture](#-security-architecture)
- [Update History](#-update-history)
- [FAQ](#-faq)
- [Developers](#-developers)
- [Disclaimer](#️-disclaimer)
- [Web-Site](https://athexblackhat.github.io/F-SOCIETY/)

---

## 📖 Overview

**F-SOCIETY Tools Installer** is a state-of-the-art penetration testing toolkit aggregator developed for the cyber security community. Born from the vision of making advanced security tools accessible across all platforms, F-SOCIETY has evolved from a simple installer into a comprehensive framework housing **10,000+ security tools** under one unified interface — completely **free and open-source**.

| Aspect | F-SOCIETY | Traditional Toolkits |
|---|---|---|
| Tool Count | **10,000+** | 100–500 |
| Platform Support | Linux + Android + WSL | Linux Only |
| Installation | One-Click Automated | Manual Per Tool |
| Updates | Rolling / Priority | Irregular |
| Cost | **Free & Open Source** | Often Paid |
| Categories | 20+ Specialized | 5–10 General |

---

## 🗺 Architecture

```mermaid
graph TD
    A[👤 User] --> B[bash run.sh]
    B --> C[Main Menu]
    C --> D[Category Selection]
    D --> E[Tool Installer]
    E --> F[Parallel Download Engine]
    F --> G[Dependency Resolver]
    G --> H[Integrity Check]
    H --> I[✅ Tool Ready]

    style A fill:#003311,color:#00ff41,stroke:#00ff41
    style I fill:#003311,color:#00ff41,stroke:#00ff41
```

```mermaid
graph LR
    subgraph "📦 Tool Pipeline"
        T1[Clone Repo]
        T2[Verify Checksum]
        T3[Install Deps]
        T4[Configure Tool]
    end

    subgraph "🖥 Platforms"
        P1[Kali Linux]
        P2[Ubuntu/Debian]
        P3[Parrot OS]
        P4[Termux Android]
        P5[Black Arch]
    end

    T1 --> T2 --> T3 --> T4
    T4 --> P1 & P2 & P3 & P4 & P5
```

---

## 🔥 Key Features

### 🛠 Tool Arsenal
- **10,000+ Security Tools** — largest curated collection available
- **20+ Categories** — recon to exploitation, forensics to wireless
- **Verified & Tested** — every tool validated before inclusion
- **Rolling Updates** — new tools added monthly

### 💻 Cross-Platform Support
- **Kali Linux** — native, optimized performance
- **Ubuntu / Debian / Parrot** — full compatibility
- **Black Arch** — direct repository access
- **Termux (Android)** — full mobile penetration testing
- **macOS** — experimental support
- **Windows WSL2** — partial functionality

### ⚡ Performance & Reliability
- **Parallel Downloads** — significantly faster installation
- **Auto Dependency Resolution** — no manual package hunting
- **Integrity Verification** — checksum validation on every run
- **Error Recovery** — failed installs don't break your system
- **Low Resource Usage** — runs on minimal hardware (512 MB RAM minimum)

### 🆓 100% Free & Open Source
- No license keys, no activation, no restrictions
- Fully open codebase — audit, modify, and contribute freely
- Community-driven development and support

---

## 📦 Tool Categories

```mermaid
pie title Tool Distribution (10,000+ total)
    "Recon & OSINT" : 420
    "Web App Testing" : 380
    "Exploitation" : 360
    "Password Attacks" : 290
    "Wireless Testing" : 240
    "Forensics" : 220
    "Post-Exploitation" : 200
    "Anonymity & Privacy" : 180
    "Cloud Security" : 160
    "Blue Team / Defense" : 140
    "Reporting" : 80
    "Utilities" : 130
```

### 🔍 Information Gathering (Reconnaissance) — 420+ tools
> WHOIS · DNS Enumeration · Subdomain Finder · Email Harvester · Google Dork · OSINT Framework · Shodan · Metadata Extraction · Certificate Search

**Notable:** `theHarvester` `recon-ng` `sherlock` `phoneinfoga` `dmitry` `maltego`

### 🎯 Scanning & Enumeration — 280+ tools
> Port Scanning · Network Mapping · Service Detection · Vulnerability Scanning · Web Crawling · Directory Bruteforce · CMS Detection · SSL Analysis

**Notable:** `nmap` `masscan` `nikto` `whatweb` `wpscan` `gobuster` `feroxbuster`

### 💥 Exploitation — 360+ tools
> Web Exploitation · Network Exploit · Binary Exploit · SQL Injection · Command Injection · File Upload · Privilege Escalation · Buffer Overflow

**Notable:** `metasploit` `sqlmap` `beef` `searchsploit` `routersploit` `exploitdb`

### 🔑 Password Attacks — 290+ tools
> Brute Force · Dictionary Attack · Rainbow Tables · Hash Cracking · Password Spraying · Credential Stuffing · Rule-Based Attacks

**Notable:** `hydra` `john` `hashcat` `medusa` `crowbar` `crunch` `cewl`

### 🌐 Web Application Testing — 380+ tools
> XSS Detection · CSRF Testing · File Inclusion · SSRF · RCE · WAF Bypass · API Testing · GraphQL Testing

**Notable:** `burpsuite` `zap` `wfuzz` `ffuf` `commix` `xsser` `dalfox`

### 📡 Wireless Testing — 240+ tools
> WiFi Cracking · Bluetooth · RFID Cloning · WPS Attack · WPA/WPA2 · Evil Twin · Packet Injection · Signal Analysis

**Notable:** `aircrack-ng` `wifite` `fluxion` `bettercap` `hcxdumptool`

### 🕵️ Forensics — 220+ tools
> Disk Analysis · Memory Forensics · File Recovery · Timeline Analysis · Network Forensics · Malware Analysis · Steganography

**Notable:** `autopsy` `volatility` `foremost` `binwalk` `exiftool` `wireshark`

### 🔒 Post-Exploitation — 200+ tools
> Backdoor Install · Persistence · Lateral Movement · Data Exfiltration · Cover Tracks · Keylogging · Pivoting

**Notable:** `empire` `covenant` `pupy` `merlin` `sliver` `havoc`

### ☁️ Cloud Security — 160+ tools
> AWS Pentest · Azure Assessment · GCP Scanner · Container Security · IAM Auditing

**Notable:** `prowler` `scoutsuite` `cloudsploit` `cloudmapper` `pacu`

### 🛡 Blue Team / Defense — 140+ tools
> IDS/IPS Testing · Honeypot Setup · SIEM · Log Monitoring · Threat Hunting · Incident Response

**Notable:** `snort` `ossec` `wazuh` `elastic` `zeek` `suricata`

### 🎭 Anonymity & Privacy — 180+ tools
> Tor Integration · VPN Setup · Proxy Chains · MAC Changer · DNS over HTTPS · Traffic Obfuscation

**Notable:** `tor` `proxychains` `macchanger` `anonsurf` `nipe`

---

## 🖥 Platform Support

### ✅ Full Support (Production Ready)

| Platform | Version | Architecture | Status |
|---|---|---|---|
| Kali Linux | 2024.1+ | x86\_64 / ARM64 | ✅ Optimal |
| Ubuntu | 20.04 / 22.04 / 24.04 | x86\_64 | ✅ Full |
| Debian | 11 / 12 | x86\_64 / ARM64 | ✅ Full |
| Parrot OS | 5.0+ | x86\_64 | ✅ Full |
| Black Arch | Latest | x86\_64 | ✅ Full |
| Termux (Android) | Latest | ARM64 | ✅ Full |

### ⚠️ Experimental Support

| Platform | Version | Notes |
|---|---|---|
| Fedora | 38+ | Some packages unavailable |
| CentOS / RHEL | 8+ | Requires EPEL repository |
| macOS | Monterey+ | Homebrew dependencies needed |
| Windows (WSL2) | Ubuntu WSL | Limited networking tools |
| Raspberry Pi | Any | Reduced toolset |

---

## 📊 Compatibility Matrix

| Tool Category | Linux | Termux | macOS | WSL |
|---|:---:|:---:|:---:|:---:|
| Recon Tools | ✅ | ✅ | ✅ | ✅ |
| Scanning Tools | ✅ | ✅ | ✅ | ⚠️ |
| Exploitation | ✅ | ✅ | ⚠️ | ⚠️ |
| Wireless | ✅ | ❌ | ❌ | ❌ |
| Forensics | ✅ | ✅ | ✅ | ✅ |
| Web App Testing | ✅ | ✅ | ✅ | ✅ |
| Password Attacks | ✅ | ✅ | ✅ | ✅ |
| Post-Exploitation | ✅ | ✅ | ⚠️ | ⚠️ |
| Cloud Security | ✅ | ⚠️ | ✅ | ⚠️ |
| Anonymity | ✅ | ✅ | ⚠️ | ⚠️ |

> ✅ Full Support &nbsp;&nbsp; ⚠️ Partial / Experimental &nbsp;&nbsp; ❌ Not Available

---

## 📥 Installation Guide

### ⚡ One-Line Install (Recommended)

```bash
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install -y git && \
git clone https://github.com/Athexblackhat/F-SOCIETY && cd F-SOCIETY && bash run.sh
```

### 🐧 Linux (Kali / Ubuntu / Debian / Parrot) — Step by Step

```bash
# 1. Update system
sudo apt-get update -y && sudo apt-get upgrade -y

# 2. Install core dependencies
sudo apt-get install -y git curl python3 python3-pip build-essential openssl

# 3. Install Python packages
pip install lolcat figlet requests colorama

# 4. Clone repository
git clone https://github.com/Athexblackhat/F-SOCIETY.git

# 5. Navigate & set permissions
cd F-SOCIETY && chmod +x run.sh src/run.sh

# 6. Run installer
bash run.sh
```

### 📱 Termux (Android)

```bash
# 1. Update Termux
pkg update -y && pkg upgrade -y

# 2. Install dependencies
pkg install git python curl openssl -y

# 3. Install Python packages
pip install lolcat figlet

# 4. Clone & run
git clone https://github.com/Athexblackhat/F-SOCIETY
cd F-SOCIETY && chmod +x run.sh && bash run.sh
```

> ⚠️ **Note:** Wireless tools require root access on Android.

### 🎩 Fedora / RHEL / CentOS

```bash
sudo dnf update -y
sudo dnf install -y git python3 python3-pip curl openssl gcc make
pip3 install lolcat figlet requests colorama
git clone https://github.com/Athexblackhat/F-SOCIETY
cd F-SOCIETY && chmod +x run.sh && bash run.sh
```

### 🍎 macOS (Homebrew Required)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git python3 openssl
git clone https://github.com/Athexblackhat/F-SOCIETY
cd F-SOCIETY && bash run.sh
```

### 📁 Minimum System Requirements

| Component | Minimum | Recommended |
|---|---|---|
| RAM | 512 MB | 4 GB |
| Storage | 2 GB | 10 GB |
| Python | 3.6+ | 3.11+ |
| Git | Any | Latest |
| Shell | Bash 4.0+ | Bash 5.0+ |

---

## 🛡 Security Architecture

```mermaid
flowchart TD
    A[🚀 Launch run.sh] --> B[Checksum Validation]
    B --> C{Integrity\nPassed?}
    C -- No --> D[🔴 Abort & Re-fetch]
    C -- Yes --> E[Load Tool Database]
    E --> F[✅ Full Access Granted]

    style D fill:#3d2200,color:#ffaa44,stroke:#ff8800
    style F fill:#003311,color:#44ff88,stroke:#00ff41
```

F-SOCIETY performs integrity checks on launch to ensure your installation hasn't been corrupted or tampered with, automatically re-fetching affected files if needed — no license checks, no activation, no restrictions.

---

## 📅 Update History

```mermaid
timeline
    title F-SOCIETY Release Timeline
    Late 2024  : v1.0 Genesis
               : Private beta
               : 200 tools bundled
               : Community bug testing
    Early 2025 : v1.5 Foundation
               : 500+ core tools
               : Public release
               : Termux support added
    Oct 23 2025 : v2.0 Renaissance
                : New tools & fixes
                : Logo & animation refresh
                : Faster installation
    Oct 24 2025 : v2.5 Evolution
                : 2 new toolkits — 800+ tools
                : Port forwarding fixed
                : 89 tools updated
    Oct 26 2025 : v3 Phoenix
                : 370+ new tools
                : Cloud & IoT categories
                : Green color scheme
    Dec 22 2025 : v3.5 New Dawn
                : UI redesign
                : 40% faster installs
    12 Jun 2026 : v4.0 Ultimate
                : Now 100% free & open source
                : Complete UI redesign
                : 6,000+ new tools added
```

### 🔥 v4.0 — "Ultimate" *(June 2026)*
<details>
<summary><b>View full changelog</b></summary>

**Major Changes:**
- 🆓 **F-SOCIETY is now 100% free and open source — no license required**
- 🆕 50+ new major tools added
- 🛠 6,000+ new tools integrated
- 🎨 Complete UI redesign — new animated banners
- 📱 Improved Termux / Android compatibility
- ⚡ 40% faster installation via parallel downloads
- 🐛 50+ reported bugs resolved

</details>

### 🔥 v3.5 — "New Dawn" *(December 22, 2025)*

<details>
<summary><b>View full changelog</b></summary>

**Major Changes:**
- 🆕 2 new major tool categories added
- 🛠 370+ new tools integrated
- 🎨 Complete UI redesign — new animated banners
- 📱 Improved Termux / Android compatibility
- ⚡ 40% faster installation via parallel downloads
- 🐛 50+ reported bugs resolved

**New Tools Added:**
```
Web Application:   nuclei-templates · subfinder v2.6 · httpx v1.3 · katana v1.0
Cloud Security:    prowler v3 · scoutsuite · cloudsploit · cloudmapper
API Security:      postman-cli · graphql-scanner · swagger-parser · api-fuzzer
```

</details>

### 🔥 v3 — "Phoenix" *(October 26, 2025)*

<details>
<summary><b>View full changelog</b></summary>

- 370+ new tools added
- Cloud security & IoT testing categories launched
- AWS / Azure / GCP penetration testing suites
- Green color theme for better visibility
- 30+ bugs resolved

</details>

### 🔥 v2.5 — "Evolution" *(October 24, 2025)*

<details>
<summary><b>View full changelog</b></summary>

- 2 new toolkits — 800+ additional tools
- Port forwarding long-standing bug fixed
- Metasploit database connection resolved
- Bettercap web UI accessibility fixed
- 89 existing tools updated and patched

</details>

---

## ❓ FAQ

<details>
<summary><b>Is F-SOCIETY legal to use?</b></summary>

Yes. F-SOCIETY is designed for ethical hacking, authorized penetration testing, security research, and educational purposes. Using these tools against systems **without proper authorization is illegal** — users are solely responsible for compliance with local and international law.
</details>

<details>
<summary><b>Is F-SOCIETY really free?</b></summary>

Yes — F-SOCIETY is 100% free and open source. No license keys, no activation, no hidden costs.
</details>

<details>
<summary><b>Can I use F-SOCIETY on my Android phone?</b></summary>

Yes. F-SOCIETY fully supports Termux on Android. Install Termux from F-Droid, then follow the Termux installation guide above. Note: wireless tools require root access.
</details>

<details>
<summary><b>How often are tools updated?</b></summary>

Monthly updates for new tools and bug fixes. Critical security updates are released immediately. The toolkit checks for updates on every launch.
</details>

<details>
<summary><b>Does F-SOCIETY work on macOS M1/M2?</b></summary>

Experimental support is available. Some tools may not function due to ARM architecture limitations. Full Apple Silicon support is actively being developed.
</details>

<details>
<summary><b>What if installation fails midway?</b></summary>

Error recovery protocols prevent partial installations from breaking your system. Simply re-run `bash run.sh` — the installer detects and resumes from the last successful step.
</details>

<details>
<summary><b>Can I contribute to F-SOCIETY?</b></summary>

Absolutely. F-SOCIETY is open source — pull requests, issue reports, and tool suggestions are welcome on GitHub.
</details>

---

## 👨‍💻 Developers

<div align="center">

```
 █████╗ ████████╗██╗  ██╗███████╗██╗  ██╗    ██╗  ██╗     █████╗ ██╗  ████████╗██╗  ██╗███████╗ █████╗ 
██╔══██╗╚══██╔══╝██║  ██║██╔════╝╚██╗██╔╝    ╚██╗██╔╝    ██╔══██╗██║  ╚══██╔══╝██║  ██║██╔════╝██╔══██╗
███████║   ██║   ███████║█████╗   ╚███╔╝      ╚███╔╝     ███████║██║     ██║   ███████║█████╗  ███████║
██╔══██║   ██║   ██╔══██║██╔══╝   ██╔██╗      ██╔██╗     ██╔══██║██║     ██║   ██╔══██║██╔══╝  ██╔══██║
██║  ██║   ██║   ██║  ██║███████╗██╔╝ ██╗    ██╔╝ ██╗    ██║  ██║███████╗██║   ██║  ██║███████╗██║  ██║
╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝    ╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                                                                                       
```

</div>

F-SOCIETY is jointly developed and maintained by **ATHEX BLACK HAT** and **ALTHEA BLACK HAT** — cyber security researchers, penetration testers, and tool developers dedicated to creating powerful yet accessible security tools for the ethical hacking community.

> *"Security through knowledge. Power through tools. Ethics through choice."*

| Stat | Value |
|---|---|
| Tools Curated & Maintained | 10,000+ |
| Categories Organized | 20+ |
| Development Hours | 1000+ |
| Active Since | Late 2024 |

### 🤝 Connect

| Platform | Details |
|---|---|
| 🐙 GitHub | [github.com/Athexblackhat](https://github.com/Athexblackhat) |
| 📱 WhatsApp | +92 349-0916663 |

---

## ⚠️ Disclaimer

> **F-SOCIETY TOOLKIT IS DESIGNED SOLELY FOR LAWFUL AND ETHICAL USE.**

**✅ Authorized uses:**
- Ethical hacking education & training
- Authorized penetration testing (with written permission)
- Security research & development
- CTF (Capture The Flag) competitions
- Vulnerability assessment on systems you own or have explicit authorization to test

**❌ Prohibited uses:**
- Unauthorized system access
- Malicious activities of any kind
- Illegal surveillance or wiretapping
- Data theft or destruction
- Any violation of local or international laws

The developers (**ATHEX BLACK HAT** and **ALTHEA BLACK HAT**) assume **NO LIABILITY** for misuse of this software, damages caused by improper use, legal consequences of unauthorized activities, or third-party tool behavior.

**By using this software, you acknowledge that:**
1. You understand the legal implications
2. You accept full responsibility for your actions
3. You will use this toolkit ethically and legally
4. The developers are not responsible for your actions

*If you do not agree, do not use this software.*

---

## 📜 License

```
MIT License — Copyright (c) 2024–2026 ATHEX BLACK HAT & ALTHEA BLACK HAT

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND. THE AUTHORS
SHALL NOT BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS.
```

---

<div align="center">

⚡ **POWERED BY ATHEX BLACK HAT x ALTHEA BLACK HAT** ⚡

*"The best exploit is persistence. The ultimate root is knowledge."*

*"Go forth. Fuzz the unknown. Patch your own vulnerabilities. Write your own story."*

---

Made with ❤️ for the Cyber Security Community

**© 2025–2026 ATHEX BLACK HAT & ALTHEA BLACK HAT · All Rights Reserved**

[![GitHub](https://img.shields.io/badge/GitHub-Athexblackhat-181717?style=flat-square&logo=github)](https://github.com/Athexblackhat)
[![WhatsApp](https://img.shields.io/badge/WhatsApp-Contact-25D366?style=flat-square&logo=whatsapp)](https://wa.me/923490916663)

</div>
