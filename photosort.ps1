[System.Reflection.Assembly]::LoadWithPartialName('Media Sorting Tool') | out-null
# Mahapps Library
[System.Reflection.Assembly]::LoadFrom('C:\ps\files\assembly\MahApps.Metro.dll')       | out-null
[System.Reflection.Assembly]::LoadFrom('C:\ps\files\assembly\System.Windows.Interactivity.dll') | out-null

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
<#

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
	x:Name="WindowSplash" Title="Orion's Sick Photo Sorting Tool" WindowStyle="None" WindowStartupLocation="CenterScreen"
	Background="Purple" ShowInTaskbar ="false" 
	Width="600" Height="350" ResizeMode = "NoResize" >
	
	<Grid>
		<Grid.RowDefinitions>
            <RowDefinition Height="70"/>
            <RowDefinition/>
        </Grid.RowDefinitions>
		
		<Grid Grid.Row="0" x:Name="Header" >	
			<StackPanel Orientation="Horizontal" HorizontalAlignment="Left" VerticalAlignment="Stretch" Margin="20,10,0,0">       
				<Image x:Name="Logo" RenderOptions.BitmapScalingMode="Fant" HorizontalAlignment="Left" Margin="0,0,0,0" Width="60" Height="60" VerticalAlignment="Top" /> 
			    <Label Content="Orion's Sick Photos Sorting Tool" Margin="5,0,0,0" Foreground="black" Height="50"  FontSize="30"/>
			</StackPanel> 
		</Grid>
        <Grid Grid.Row="1" >
		 	<StackPanel Orientation="Vertical" HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,5,5,5">
				<Label x:Name = "LoadingLabel"  Foreground="White" HorizontalAlignment="Center" VerticalAlignment="Center" FontSize="24" Margin = "0,0,0,0"/>
				<Controls:MetroProgressBar IsIndeterminate="True" Foreground="black" HorizontalAlignment="Center" Width="350" Height="20"/>
			</StackPanel>	
        </Grid>
	</Grid>
		
</Window> 
"@
 
 
    $reader = New-Object System.Xml.XmlNodeReader $xml
    $hash.window = [Windows.Markup.XamlReader]::Load($reader)
    $hash.LoadingLabel = $hash.window.FindName("Sorting Now...")
    $hash.Logo = $hash.window.FindName("Logs in C:\Users\THOR\Desktop\photoSort-logs\")
    $hash.Logo.Source="C:\Users\THOR\Pictures\2girls.JPG"
    $hash.LoadingLabel.Content= "Sorting your photos and videos"  
    $hash.window.ShowDialog() 
    
}) | Out-Null

#########################################################################
#                        Load Main Panel                                #
#########################################################################

$Global:pathPanel= 'C:\ps\files'

function LoadXaml ($filename){
    $XamlLoader=(New-Object System.Xml.XmlDocument)
    $XamlLoader.Load($filename)
    return $XamlLoader
}


$XamlMainWindow=LoadXaml("C:\ps\files\form.xaml")
$reader = (New-Object System.Xml.XmlNodeReader $XamlMainWindow)
$Form = [Windows.Markup.XamlReader]::Load($reader)
#>

#import-module 'C:\ps\Photo-Sort.ps1'

#Start-SplashScreen

C:\ps\Photo-Sort.ps1

Start-Sleep 5

# close-SplashScreen