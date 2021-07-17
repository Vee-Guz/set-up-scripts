#!/bash/bin

#create groups - HR, IT, Finance, Marketing, Sales, and Security
New-ADGroup -Name "Human Resource" -DisplayName "HR" -GroupScope Global
New-ADGroup -Name "Information Technology" -DisplayName "IT" -GroupScope Global
New-ADGroup -Name "Finance" -DisplayName "Finance" -GroupScope Global
New-ADGroup -Name "Marketing" -DisplayName "Marketing" -GroupScope Global
New-ADGroup -Name "Sales" -DisplayName "Sales" -GroupScope Global
New-ADGroup -Name "Security" -DisplayName "Security" -GroupScope Global

