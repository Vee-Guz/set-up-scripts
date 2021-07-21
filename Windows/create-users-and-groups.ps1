#!/bash/bin

#create groups - HR, IT, Finance, Marketing, Sales, and Security
New-ADGroup -Name "Human Resources" -DisplayName "HR" -GroupScope Global
New-ADGroup -Name "Information Technology" -DisplayName "IT" -GroupScope Global
New-ADGroup -Name "Finance" -DisplayName "Finance" -GroupScope Global
New-ADGroup -Name "Marketing" -DisplayName "Marketing" -GroupScope Global
New-ADGroup -Name "Sales" -DisplayName "Sales" -GroupScope Global
New-ADGroup -Name "Security" -DisplayName "Security" -GroupScope Global

#create users - WandaVision characters
New-ADUser -Name "Wanda Maximoff" -PasswordNotRequired $True
New-ADUser -Name "Vision" -PasswordNotRequired $True
New-ADUser -Name "Monica Rambeau" -PasswordNotRequired $True
New-ADUser -Name "Agatha Harkness" -PasswordNotRequired $True
New-ADUser -Name "Darcy Lewis" -PasswordNotRequired $True
New-ADUser -Name "Jimmy Woo" -PasswordNotRequired $True

#assign users to groups
Add-ADGroupMember -Identity "Human Resources" -Members "Wanda Maximoff"
Add-ADGroupMember -Identity "Information Technology" -Members "Vision"
Add-ADGroupMember -Identity "Finance" -Members "Monica Rambeau"
Add-ADGroupMember -Identity "Marketing" -Members "Agatha Harkness"
Add-ADGroupMember -Identity "Sales" -Members "Darcy Lewis"
Add-ADGroupMember -Identity "Security" -Members "Jimmy Woo"

