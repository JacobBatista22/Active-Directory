<#
.SYNOPSIS
    Active Directory Home Lab Verification Script
.DESCRIPTION
    This script validates the Identity and Access Management (IAM) 
    and Network configuration for the Windows Server 2022 Lab.
.AUTHOR
    Jacob Batista
#>

Write-Host "--- Starting Lab Verification ---" -ForegroundColor Cyan

# 1. Verify User Group Membership (RBAC)
# Checking Alice Smith (IT-Helpdesk) and John Doe (HR-Team)
Write-Host "`n[1] Checking RBAC Group Memberships..." -ForegroundColor Yellow
$Users = @("asmith", "jdoe")

foreach ($User in $Users) {
    try {
        $Groups = Get-ADPrincipalGroupMembership -Identity $User | Select-Object -ExpandProperty Name
        [cite_start]Write-Host "User: $User is a member of: $($Groups -join ', ')" [cite: 41]
    } catch {
        Write-Warning "Could not retrieve membership for $User. Ensure the AD module is loaded."
    }
}

# 2. Verify Network Configuration
Write-Host "`n[2] Checking Static IP and DNS Configuration..." -ForegroundColor Yellow
# Target Static IP: 10.0.0.50
ipconfig /all | [cite_start]Select-String "IPv4 Address", "DNS Servers", "Subnet Mask" [cite: 42]

# 3. Verify Applied GPOs
Write-Host "`n[3] Generating Group Policy Result Summary..." -ForegroundColor Yellow
# Displays applied policies to ensure Password Policies and Security lockdowns are active
[cite_start]gpresult /Scope Computer /v [cite: 44]

Write-Host "`n--- Verification Complete ---" -ForegroundColor Cyan
