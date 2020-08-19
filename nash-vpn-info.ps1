Function nash-vpn ()
{   
    
   <#
    $info =  Orion, SSLVN Access

    While behind you public IP please use Firefox and goto https://50.192.202.69:11443 (accept the ssl cert error) and go to the firewalls end user portal.

    UN = ocs.orion
    PW = the standard one we have been using

    Once logged in

    1) Select change password
    2) Log out
    3) Log back in with your new password
    4) Select remote access
    5) Download the top one
    6) *** note before you install *** please check that you DO NOT have a different brand VPN client installed
    7) Right click and run app as admin
    8) Install (** Note trust software if prompted, and if Windows 10 questions if the software was installed properly, say yes)
    9) Right click the traffic light icon in the icon tray and exit
    10) Explore to | Program Files (x86) | Sophos | Sophos SSL VPN Client | bin – right click and change properties to alwys run as admin
    11) Re launch client
    12) Right click on traffic light and select connect
    13) When prompted enter username and password (note both are case sensitive)
    14) Once the traffic light goes form RED-YELLOE-GREEN you are VPNed in
    15) RDP to anything at that point
    ''#>
    
    c:\ps\nashvpn.txt
}


nash-vpn