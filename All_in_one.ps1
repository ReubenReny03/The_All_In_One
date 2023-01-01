Add-Type -assembly System.Windows.Forms
write-Host $_-Foregroundcolor yellow -Backgroundcolor black
$Folder = 'C:\ReMo'
if (Test-Path -Path $Folder) {
    "Welcome Back :)"
} else {
    "You can see all downloaded file in C:\ReMo"
}

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='All In One Downloader'

$main_form.Width = 600
$main_form.Height = 400

$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(0,0)
$Button.Size = New-Object System.Drawing.Size(120,23)
$Button.Text = "Python 3.11"

$Buttonz = New-Object System.Windows.Forms.Button
$Buttonz.Location = New-Object System.Drawing.Size(120,0)
$Buttonz.Size = New-Object System.Drawing.Size(120,23)
$Buttonz.Text = "Spotify"

$Button2 = New-Object System.Windows.Forms.Button
$Button2.Location = New-Object System.Drawing.Size(0,23)
$Button2.Size = New-Object System.Drawing.Size(120,23)
$Button2.Text = "VS Code"

$Button2z = New-Object System.Windows.Forms.Button
$Button2z.Location = New-Object System.Drawing.Size(120,23)
$Button2z.Size = New-Object System.Drawing.Size(120,23)
$Button2z.Text = "install"

$Button3 = New-Object System.Windows.Forms.Button
$Button3.Location = New-Object System.Drawing.Size(0,46)
$Button3.Size = New-Object System.Drawing.Size(120,23)
$Button3.Text = "Discord"

$Button3z = New-Object System.Windows.Forms.Button
$Button3z.Location = New-Object System.Drawing.Size(120,46)
$Button3z.Size = New-Object System.Drawing.Size(120,23)
$Button3z.Text = "Install"

$main_form.Controls.Add($Button)
$main_form.Controls.Add($Button2)
$main_form.Controls.Add($Button3)
$main_form.Controls.Add($Buttonz)
$main_form.Controls.Add($Button2z)
$main_form.Controls.Add($Button3z)

# spotify : 
$Button.Add_Click(
{
Write-Host "We are downloading Python"
$source = 'https://www.python.org/ftp/python/3.11.1/python-3.11.1-amd64.exe'
$destination = 'C:\ReMo\Python.exe'
$wc = New-Object net.webclient
$wc.Downloadfile($source, $destination)
Start-Process C:\ReMo\Python.exe
}
)
$Buttonz.Add_Click(
{
    Write-Host "We are downloading Spotify"
    $source = 'https://download.scdn.co/SpotifySetup.exe'
    $destination = 'C:\ReMo\Spotify.exe'
    Invoke-WebRequest -Uri $source -OutFile $destination
    Start-Process C:\ReMo\Spotify.exe
}
)
$Button2.Add_Click(
{
    Write-Host "We are downloading VS_CODE its a bit big pls wait.."
    $source = 'https://az764295.vo.msecnd.net/stable/e8a3071ea4344d9d48ef8a4df2c097372b0c5161/VSCodeUserSetup-x64-1.74.2.exe'
    $destination = 'C:\ReMo\VSCode.exe'
    $wc = New-Object net.webclient
    $wc.Downloadfile($source, $destination)
    Start-Process C:\ReMo\VSCode.exe
}
)
$Button2z.Add_Click(
{
    Write-Host "Not Set"
}
)

$main_form.AutoSize = $true
$main_form.ShowDialog()