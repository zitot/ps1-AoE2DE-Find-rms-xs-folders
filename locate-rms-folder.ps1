function Find-Folders {
    [Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null
    [System.Windows.Forms.Application]::EnableVisualStyles()
    $browse = New-Object System.Windows.Forms.FolderBrowserDialog
    $browse.SelectedPath = "C:\Program Files (x86)\Steam\steamapps\common\AoE2DE\resources\_common\random-map-scripts"
    $browse.ShowNewFolderButton = $false
    $browse.Description = "Locate your random map scripts folder. Usually AoE2DE\resources\_common\random-map-scripts"

    $loop = $true
    while($loop)
    {
        if ($browse.ShowDialog() -eq "OK")
        {
        $loop = $false
        
        #Create Shortcut snippet
        $create_shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut
        $s = $create_shortcut.invoke(".\random-map-scripts.lnk") # Must end in .lnk
        $s.TargetPath = $browse.SelectedPath
        $s.IconLocation = "imageres.dll,3" # This is a reference to a folder icon
        $s.Description = "random-map-scripts-shortcut"
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
