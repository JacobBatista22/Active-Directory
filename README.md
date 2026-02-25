# Windows Server 2022 Hybrid Home Lab
**Project by: Jacob Batista** 

## 🎯 Objective
To design, deploy, and secure a virtualized enterprise network environment to demonstrate proficiency in **IAM, Network Engineering, and Systems Administration**.

## 🛠️ Technical Skills & Tools
* **Virtualization:** VMware Workstation Pro, Oracle VirtualBox 
* **OS:** Windows Server 2022 (Desktop Experience) 
* **Networking:** IPv4 Static Addressing (10.0.0.50), Split DNS 
* **Active Directory:** RBAC, GPOs, OU structuring 

## 🏗️ System Architecture
I implemented a **Split DNS** architecture, allowing the server to resolve internal domain resources locally while forwarding external requests to the home router.

| Setting | Value |
| :--- | :--- |
| **IP Assignment** | Static IPv4 (10.0.0.50) |
| **Subnet Mask** | 255.255.255.0 |
| **DNS Strategy** | Primary: Localhost (127.0.0.1) |

## 🔐 Security & IAM
* **RBAC Model:** Created OUs for IT and HR departments with specific Security Groups (IT-Helpdesk, HR-Team).
* **GPO Enforcement:** Implemented strict password policies and verified them using `gpresult /r`.

## 🛠️ Troubleshooting
* **ISO Integrity:** Resolved "0KB" file errors by moving storage out of OneDrive-synced directories.
* **Network Persistence:** Fixed IP mismatches where Server Manager cached old DHCP addresses.
