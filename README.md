** Make sure to pip install ansible, apt has an older copy **

# Parrot Ghost 👻

> **Note:** This project is a fork of [IppSec/parrot-build](https://github.com/IppSec/parrot-build).

A comprehensive Ansible playbook to transform **Parrot HTB Edition** into a fully-equipped pentesting environment for **OSCP**, **CPTS**, **Active Directory**, **Web**, and **Linux** engagements.

## Quick Start

```bash
# 1. Install Ansible
python3 -m pip install ansible

# 2. Clone and enter the repo
git clone https://github.com/Okymi-X/parrot_ghost.git && cd parrot_ghost

# 3. Install galaxy requirements
ansible-galaxy install -r requirements.yml

# 4. Get a sudo token
sudo whoami

# 5. Run the playbook
ansible-playbook main.yml
```

---

## 🛠️ Tools Section

### 📦 System Packages (APT)

| Category | Tools |
|----------|-------|
| **Core Utilities** | jq, pipx, curl, wget, git, vim, tmux, bat, tree, xclip, p7zip-full, rlwrap, flameshot, shellcheck |
| **Scanning** | nmap, masscan, nikto, whatweb, gobuster, ffuf, wfuzz, dirb, wpscan |
| **DNS/SNMP** | dnsrecon, dnsenum, fierce, whois, snmpwalk, onesixtyone |
| **SMB/NetBIOS** | enum4linux, smbclient, smbmap, nbtscan |
| **Password Cracking** | hashcat, john, hydra, medusa, cewl, crunch |
| **Exploitation** | sqlmap, msfpc, mingw-w64 |
| **Network** | socat, proxychains4, netcat-openbsd, tcpdump, wireshark, tshark, sshuttle |
| **DB Clients** | redis-tools, default-mysql-client, postgresql-client, ldap-utils |
| **RE/Forensics** | gdb, radare2, binwalk, foremost, steghide, ltrace, strace, exiftool |
| **Cross-Compile** | mono-devel |
| **Containers** | docker-ce, docker-ce-cli, docker-compose-plugin, containerd.io |

---

### 🐍 Python/Pipx Tools

| Tool | Purpose |
|------|---------|
| **impacket** | AD/SMB/Kerberos toolkit (secretsdump, psexec, wmiexec...) |
| **netexec** | Network execution (CrackmapExec successor) |
| **certipy-ad** | AD Certificate Services abuse |
| **bloodhound-ce** | BloodHound CE Python ingestor |
| **coercer** | NTLM authentication coercion |
| **updog** | Simple HTTP/HTTPS file server |
| **pwncat-cs** | Post-exploitation framework |
| **mitm6** | IPv6 DNS MITM for AD attacks |
| **ldapdomaindump** | LDAP domain information dumper |
| **bloodyAD** | AD privilege escalation |
| **ldeep** | LDAP enumeration |
| **adidnsdump** | AD integrated DNS dump |
| **donpapi** | DPAPI credential extraction |
| **pre2k** | Pre-2000 computer account abuse |
| **targetedKerberoast** | Targeted Kerberoasting |
| **name-that-hash** | Hash identification |
| **search-that-hash** | Hash lookup |
| **arjun** | HTTP parameter discovery |
| **wafw00f** | WAF detection |
| **droopescan** | CMS scanner (Drupal, WordPress, etc.) |

---

### 💎 Ruby Gems

| Tool | Purpose |
|------|---------|
| **evil-winrm** | WinRM shell with upload/download |
| winrm, winrm-fs | WinRM dependencies |
| rubyntlm, gssapi | Authentication libs |

---

### 🔧 Go Tools

| Tool | Purpose |
|------|---------|
| **kerbrute** | Kerberos brute-force |
| **hakrawler** | Web crawler for discovering endpoints |
| **gospider** | Fast web spider |
| **assetfinder** | Subdomain/asset discovery |
| **waybackurls** | Fetch URLs from Wayback Machine |
| **gau** | Get All URLs from multiple sources |
| **anew** | Append unique lines to file |
| **qsreplace** | Replace query string values |
| **httprobe** | Probe for live HTTP servers |
| **unfurl** | URL parser |
| **gowitness** | Website screenshot tool |
| **ffuf v2** | Fast web fuzzer (Go version) |

---

### 🌐 Web Pentesting Tools

| Tool | Source | Purpose |
|------|--------|---------|
| **nuclei** | Binary release | Vulnerability scanner with templates |
| **subfinder** | Binary release | Passive subdomain discovery |
| **httpx** | Binary release | Multi-purpose HTTP toolkit |
| **katana** | Binary release | Next-gen web crawler |
| **dalfox** | Binary release | XSS scanner |
| **jwt_tool** | GitHub clone | JWT exploitation |
| **GitTools** | GitHub clone | Git repo dumping/extraction |
| **CORScanner** | GitHub clone | CORS misconfiguration scanner |
| **JSParser** | GitHub clone | JavaScript file parser |

---

### 🏰 Active Directory Tools

| Tool | Source | Purpose |
|------|--------|---------|
| **Responder** | GitHub clone | LLMNR/NBT-NS/MDNS poisoning |
| **krbrelayx** | GitHub clone | Kerberos relay attacks |
| **PKINITtools** | GitHub clone | PKINIT abuse tools |
| **PetitPotam** | GitHub clone | NTLM relay trigger (EfsRpc) |
| **noPac** | GitHub clone | CVE-2021-42278/42287 exploit |
| **enum4linux-ng** | GitHub clone | Modern SMB/LDAP enumeration |
| **ADCSKiller** | GitHub clone | AD Certificate Services exploitation |
| **Powermad** | GitHub clone | PowerShell MachineAccountQuota abuse |
| **Inveigh** | GitHub clone | .NET LLMNR/NBNS/mDNS/DNS spoofer |
| **SharpCollection** | GitHub clone | Pre-built .NET offensive tools |

---

### 🐧 Linux Enumeration & Privesc

| Tool | Source | Purpose |
|------|--------|---------|
| **linpeas.sh** | Release download | Linux privilege escalation audit |
| **winPEAS** | Release download | Windows privilege escalation audit |
| **LinEnum** | GitHub clone | Linux enumeration script |
| **linux-smart-enumeration** | GitHub clone | Smart Linux enumeration |
| **linux-exploit-suggester** | GitHub clone | Kernel exploit finder |
| **unix-privesc-check** | GitHub clone | Unix privesc checker |
| **linuxprivchecker** | GitHub clone | Python Linux privesc checker |
| **pspy** | Release download | Process monitoring without root |
| **PrivescCheck** | GitHub clone | Windows privesc (PowerShell) |

---

### 🔗 Network & Pivoting

| Tool | Source | Purpose |
|------|--------|---------|
| **chisel** | Release download | TCP/UDP tunneling over HTTP |
| **ligolo-ng** | Release download | Advanced tunneling/pivoting |
| **Sliver** | Release download | Adversary emulation / C2 framework |
| **plink.exe** | Direct download | PuTTY SSH tunneling (Windows) |
| **static-binaries** | GitHub clone | Static netcat, socat, etc. |
| **penelope** | GitHub clone | Advanced reverse shell handler |

---

### 📖 Wordlists

| Resource | Location |
|----------|----------|
| **SecLists** | `/opt/SecLists` |
| **PayloadsAllTheThings** | `/opt/PayloadsAllTheThings` |
| **rockyou.txt** | `/usr/share/wordlists/rockyou.txt` |
| **Custom wordlists** | `/opt/wordlists/custom/` |

---

### 🩸 BloodHound CE

BloodHound Community Edition deployed via Docker Compose at port **8088**.
- Credentials saved to: `/opt/bloodhound/server/initial-password.txt`
- Neo4j on port `7474`

---

### 🖥️ IDE & Extensions

| Extension | Purpose |
|-----------|---------|
| Code Spell Checker | Spelling |
| Python | Python support |
| PHP Tools | PHP support |
| GitHub Copilot | AI coding assistant |
| Snyk | Vulnerability scanner |

---

### 🌐 Web Shells (Transfer Tools)

| Tool | Location |
|------|----------|
| **p0wny-shell** | `/opt/p0wny-shell` |
| **wwwolf-php-webshell** | `/opt/wwwolf-php-webshell` |

---

## Roles Overview

| Role | Description |
|------|-------------|
| `install-tools` | All pentesting tools (see above) |
| `configure-tmux` | Tmux configuration |
| `customize-terminal` | Terminal colors and prompt |
| `customize-browser` | Browser extensions and bookmarks |
| `configure-logging` | Rsyslog, auditd, ufw |
| `configure-system` | Sudoers configuration |

## IppSec's Original Notes
* Mate-Terminal Colors, I show how to configure it here (https://www.youtube.com/watch?v=2y68gluYTcc). I just did the steps in that video on my old VM to backup the color scheme, then copied it to this repo.
* Evil-Winrm/Certipy/SharpCollection/CME/Impacket, will make a video for these soon
* Updated BurpSuite Activation. Later versions of ansible would hang if a shell script started a process that didn't die. Put a timeout on the java process
