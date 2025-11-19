![Skills Used](https://img.shields.io/badge/Skills-Nmap%20%7C%20DNS%20%7C%20WHOIS%20%7C%20Reconnaissance-blue?style=for-the-badge)


🕵️‍♂️ Web Reconnaissance Report

Target: scanme.nmap.org
Analyst: Sanjay
Project: Web Reconnaissance Portfolio Project
Date: November 2025

⸻

🔍 1. Executive Summary

This report documents a full passive and active reconnaissance exercise performed against the public testing target scanme.nmap.org, provided legally by the Nmap Project for training and research.

The purpose of this report is to:
	•	Demonstrate understanding of early-stage information gathering
	•	Use real tools (DNS, WHOIS, Nmap) to collect technical data
	•	Produce a structured analysis similar to what junior security analysts create
	•	Strengthen my cybersecurity portfolio with practical work

  🧰 2. Tools & Commands Used

DNS Enumeration

nslookup scanme.nmap.org
dig scanme.nmap.org
host scanme.nmap.org

Output saved: dns.txt

WHOIS Lookup

whois scanme.nmap.org

Output saved: whois.txt

Basic Port Scan

nmap scanme.nmap.org

Output saved: nmap-basic.txt

Service Version Detection

nmap -sV scanme.nmap.org

Output saved: nmap-services.txt

Aggressive Recon Scan

nmap -A scanme.nmap.org

Output saved: nmap-aggressive.txt

🌐 3. DNS Findings

Based on dns.txt
	•	The domain resolves to a publicly routable IP address.
	•	DNS response includes A record and authoritative server information.
	•	No unusual DNS entries such as TXT or MX records (expected — this is not a production website).
	•	TTL values are normal for a public-facing test server.

What this tells us:
The target uses standard DNS hosting and exposes only basic records. No misconfigurations or unusual endpoints were observed.

📝 4. WHOIS Findings

Based on whois.txt
	•	Registrant information is anonymized (privacy-protected).
	•	The domain is owned and maintained by the Nmap Project.
	•	Administrative, technical, and registrar information are consistent with test infrastructure.
	•	No sensitive or misconfigured WHOIS records.

What this tells us:
WHOIS privacy is implemented correctly.
This reduces attack surface by preventing social engineering opportunities.

🚪 5. Nmap Scan Results

🔹 Open Ports Identified (from basic & service scans)
	•	22/tcp — SSH
	•	80/tcp — HTTP
	•	9929/tcp — nping-echo
	•	31337/tcp — elite
	•	(Occasionally) 427/tcp — filtered

🔹 Service Details (from nmap -sV)
	•	SSH is open and reachable
	•	HTTP service is detected (Apache or similar)
	•	Custom services exposed on ports 9929 and 31337
	•	These are intentionally placed for testing

Interpretation:
The attack surface is intentionally left open for training.
In real-world production systems, unnecessary open ports would represent risk.

🔎 6. Aggressive Scan Observations (Nmap -A)

Based on nmap-aggressive.txt
	•	OS fingerprinting attempts were made
	•	Traceroute completed
	•	Service scripts executed
	•	No high-severity vulnerabilities revealed
	•	System behaves like a Linux distribution

Interpretation:
The target is hardened enough not to expose high-risk banners or version leaks.
Aggressive scans reveal configuration details but nothing exploitable.

⚠️ 7. Risk Assessment (Educational Context)

Category
Risk
Notes
Open Ports
Low (expected)
Exposed as part of training
Service Versions
Low
No vulnerable versions detected
DNS
Low
Standard, minimal records
WHOIS
Low
Privacy protected
OS Fingerprint
Low
Normal behaviour

Real-world takeaway:
Even “safe” small attack surfaces can reveal useful information.
Attackers chain small findings to build attack paths.

🧩 8. What This Exercise Shows (Skills Demonstrated)

✔ Understanding of network reconnaissance

✔ Ability to run and interpret Nmap scans

✔ Ability to save tool output to files (redirects)

✔ Ability to analyse DNS and WHOIS data

✔ Ability to produce a structured, professional-style report

✔ Ability to maintain a GitHub portfolio

This project demonstrates real, foundational security analyst skills — valuable for junior cyber roles.

📂 9. Included Artifacts (Evidence Files)

The following scan outputs are included in this folder:
	•	dns.txt
	•	whois.txt
	•	nmap-basic.txt
	•	nmap-services.txt
	•	nmap-aggressive.txt

These files serve as raw evidence supporting the findings in this report.

🧭 10. Next Steps (Roadmap)
	•	Perform recon on a second domain (e.g., example.com)
	•	Create a comparison table: production system vs test system
	•	Add Bash automation (Nmap wrapper script)
	•	Expand portfolio with:
	•	Log analysis
	•	Windows investigation
	•	Linux hardening
