#########################################################################
# Author:  Kevin RAHETILAHY                                             #
# E-mail: kevin.rhtl@gmail.com                                          #
# Blog: dev4sys.blogspot.fr                                             #
#########################################################################


#########################################################################
#                        Add shared_assemblies                          #
#########################################################################

[System.Reflection.Assembly]::LoadWithPartialName('presentationframework') | out-null
# Mahapps Library
[System.Reflection.Assembly]::LoadFrom('assembly\MahApps.Metro.dll')       | out-null
[System.Reflection.Assembly]::LoadFrom('assembly\System.Windows.Interactivity.dll') | out-null

#########################################################################
#                            Splash Screen                              #
#########################################################################
function close-SplashScreen (){
    $hash.window.Dispatcher.Invoke("Normal",[action]{ $hash.window.close() })
    $Pwshell.EndInvoke($handle) | Out-Null
    #$runspace.Close() | Out-Null
    
}

function Start-SplashScreen{
    $Pwshell.Runspace = $runspace
    $script:handle = $Pwshell.BeginInvoke() 
}


    $hash = [hashtable]::Synchronized(@{})
    $runspace = [runspacefactory]::CreateRunspace()
    $runspace.ApartmentState = "STA"
    $Runspace.ThreadOptions = "ReuseThread"
    $runspace.Open()
    $runspace.SessionStateProxy.SetVariable("hash",$hash) 
    $Pwshell = [PowerShell]::Create()

    $Pwshell.AddScript({
    $xml = [xml]@"
     <Window
	xmlns:Controls="clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro"
	xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
	xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
	x:Name="WindowSplash" Title="SplashScreen" WindowStyle="None" WindowStartupLocation="CenterScreen"
	Background="Green" ShowInTaskbar ="true" 
	Width="600" Height="350" ResizeMode = "NoResize" >
	
	<Grid>
		<Grid.RowDefinitions>
            <RowDefinition Height="70"/>
            <RowDefinition/>
        </Grid.RowDefinitions>
		
		<Grid Grid.Row="0" x:Name="Header" >	
			<StackPanel Orientation="Horizontal" HorizontalAlignment="Left" VerticalAlignment="Stretch" Margin="20,10,0,0">       
				<Image x:Name="Logo" RenderOptions.BitmapScalingMode="Fant" HorizontalAlignment="Left" Margin="0,0,0,0" Width="60" Height="60" VerticalAlignment="Top" /> 
			    <Label Content="Powershell" Margin="5,0,0,0" Foreground="White" Height="50"  FontSize="30"/>
			</StackPanel> 
		</Grid>
        <Grid Grid.Row="1" >
		 	<StackPanel Orientation="Vertical" HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,5,5,5">
				<Label x:Name = "LoadingLabel"  Foreground="White" HorizontalAlignment="Center" VerticalAlignment="Center" FontSize="24" Margin = "0,0,0,0"/>
				<Controls:MetroProgressBar IsIndeterminate="True" Foreground="White" HorizontalAlignment="Center" Width="350" Height="20"/>
			</StackPanel>	
        </Grid>
	</Grid>
		
</Window> 
"@
 
 
    $reader = New-Object System.Xml.XmlNodeReader $xml
    $hash.window = [Windows.Markup.XamlReader]::Load($reader)
    $hash.LoadingLabel = $hash.window.FindName("LoadingLabel")
    $hash.Logo = $hash.window.FindName("Logo")
    $hash.Logo.Source="C:\Users\THOR\Pictures\2girls.JPG"
    $hash.LoadingLabel.Content= "Sorting your Photos and Videos Now..."  
    $hash.window.ShowDialog() 
    
}) | Out-Null


#we open ou splash-screen
Start-SplashScreen
      

#########################################################################
#                        Load Main Panel                                #
#########################################################################

$Global:pathPanel= split-path -parent $MyInvocation.MyCommand.Definition

function LoadXaml ($filename){
    $XamlLoader=(New-Object System.Xml.XmlDocument)
    $XamlLoader.Load($filename)
    return $XamlLoader
}


$XamlMainWindow=LoadXaml($pathPanel+"\form.xaml")
$reader = (New-Object System.Xml.XmlNodeReader $XamlMainWindow)
$Form = [Windows.Markup.XamlReader]::Load($reader)



#########################################################################
#                        Load Function                                  #
#########################################################################
# if there is function to load                                          #
#########################################################################



#########################################################################
#                       Main Pannel Event                               #
#########################################################################

try {

sleep -Seconds 5
# your code

}
catch{
    $ErrorMessage = $_.Exception.Message
    Write-Host $ErrorMessage
}


#########################################################################
#                        Action Button                                  #
#########################################################################
$CloseWindow    = $Form.Findname("CloseWindow")
$CloseWindow.Add_Click({
    $Form.close()
})



#########################################################################
#                        Show Dialog                                    #
#########################################################################

$Form.add_MouseLeftButtonDown({
   $_.handled=$true
   $this.DragMove()
})
     
 
# Everything is loaded so we close the splash-screen
close-SplashScreen

$Form.ShowDialog() | Out-Null
  

