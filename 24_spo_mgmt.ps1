# sharepoint online management shell can be used to streamline administrative
# tasks for sharepoint.


# ---------------------------------------------------------------------------
# connect to sharepoint site
# ---------------------------------------------------------------------------
$AdminCenterURL="https://crescent-admin.sharepoint.com"
Connect-SPOService -Url $AdminCenterURL -Credential (Get-Credential)


# ---------------------------------------------------------------------------
# create a new site
# the following creates a test site 
# ---------------------------------------------------------------------------
# TODO


# ---------------------------------------------------------------------------
# modify site url
# example ref -> https://www.sharepointdiary.com/2019/09/sharepoint-online-change-site-collection-url-using-powershell.html
# ---------------------------------------------------------------------------
#Set Parameters
$AdminCenterURL="https://crescent-admin.sharepoint.com"
$SiteURL = "https://crescent.sharepoint.com/sites/suppliers"
$NewSiteURL = "https://crescent.sharepoint.com/sites/vendors"
$NewSiteTitle = "Vendors"
 
#Connect to SharePoint Online
Connect-SPOService -Url $AdminCenterURL -Credential (Get-Credential)

#Get all site collections
$Sites = Get-SPOSite -Limit All | Select-Object -ExpandProperty URL
 
If($Sites -notcontains $NewSiteURL)
{
    #Rename SharePoint Online site URL using PowerShell
    Start-SPOSiteRename -Identity $SiteURL -NewSiteUrl $NewSiteURL -NewSiteTitle $NewSiteTitle -Confirm:$false
}
Else
{
    Write-Host "New Site URL '$NewSiteURL' is not available!" -f Yellow
}


# ---------------------------------------------------------------------------
# disconnect from sharepoint site
# ---------------------------------------------------------------------------