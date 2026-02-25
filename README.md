# Windows Server 2022 Hybrid Home Lab
**Project by: Jacob Batista** 

## 🎯 Objective
To design, deploy, and secure a virtualized enterprise network environment to demonstrate proficiency in **IAM, Network Engineering, and Systems Administration**.

## 🛠️ Technical Skills & Tools
* **Virtualization:** VMware Workstation Pro, Oracle VirtualBox 
* **OS:** Windows Server 2022 (Desktop Experience) 
* **Networking:** IPv4 Static Addressing (10.0.0.50), Split DNS 
* **Active Directory:** RBAC, GPOs, OU structuring 
<img width="1030" height="772" alt="image" src="https://github.com/user-attachments/assets/cefc8432-7b2b-420a-9d68-2159bd9b281a" />

## 🏗️ System Architecture
I implemented a **Split DNS** architecture, allowing the server to resolve internal domain resources locally while forwarding external requests to the home router.

| Setting | Value |
| :--- | :--- |
| **IP Assignment** | Static IPv4 (10.0.0.50) |
| **Subnet Mask** | 255.255.255.0 |
| **DNS Strategy** | Primary: Localhost (127.0.0.1) |

<img width="1022" height="767" alt="image" src="https://github.com/user-attachments/assets/669db0b8-9343-4cc6-885c-b3ede1465bd4" />


## 🔐 Security & IAM
* **RBAC Model:** Created OUs for IT and HR departments with specific Security Groups (IT-Helpdesk, HR-Team).
* **GPO Enforcement:** Implemented strict password policies and verified them using `gpresult /r`.
<img width="1020" height="772" alt="image" src="https://github.com/user-attachments/assets/2dd441e7-14d9-4e3d-8eff-e65a35b0beb2" />

## 🛠️ Troubleshooting
* **ISO Integrity:** Resolved "0KB" file errors by moving storage out of OneDrive-synced directories.
* **Network Persistence:** Fixed IP mismatches where Server Manager cached old DHCP addresses.
