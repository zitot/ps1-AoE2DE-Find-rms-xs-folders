function Find-Folders {
    [Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null
    [System.Windows.Forms.Application]::EnableVisualStyles()
    $browse = New-Object System.Windows.Forms.FolderBrowserDialog
    $browse.SelectedPath = "C:\Users\$env:username\Games\Age of Empires 2 DE"
    $browse.ShowNewFolderButton = $false
    $browse.Description = "Find your xs scripts folder, usually %USERNAME%\Games\Age of Empires 2 DE\<steam id>\resources\_common\xs"

    $loop = $true
    while($loop)
    {
        if ($browse.ShowDialog() -eq "OK")
        {
        $loop = $false
        
        #Create Shortcut snippet
        $create_shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut
        $s = $create_shortcut.invoke(".\multiplayer-xs-scripts.lnk") # Must end in .lnk
        $s.TargetPath = $browse.SelectedPath
        $s.IconLocation = "imageres.dll,3" # This is a reference to a folder icon
        $s.Description = "multiplayer-xs-scripts-shortcut"
        $s.Save() 

        #Insert your script here
        # Push-Location -Path $browse.SelectedPath -PassThru

        } else
        {
            $res = [System.Windows.Forms.MessageBox]::Show("You clicked Cancel. Would you like to try again or exit?", "Select a location", [System.Windows.Forms.MessageBoxButtons]::RetryCancel)
            if($res -eq "Cancel")
            {
                #Ends script
                return
            }
        }
    }
    $browse.SelectedPath
    $browse.Dispose()
} Find-Folders
