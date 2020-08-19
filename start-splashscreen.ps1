#########################################################################
#                        Add shared_assemblies                          #
#########################################################################
 
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
  
 <grid>
  <Grid.RowDefinitions>
            <rowdefinition Height="70"/>
            <RowDefinition/>
        </Grid.RowDefinitions>
   
  <grid Grid.Row="0" x:Name="Header" > 
   <stackpanel Orientation="Horizontal" HorizontalAlignment="Left" VerticalAlignment="Stretch" Margin="20,10,0,0">       
    <image x:Name="Logo" RenderOptions.BitmapScalingMode="Fant" HorizontalAlignment="Left" Margin="0,0,0,0" Width="60" Height="60" VerticalAlignment="Top" /> 
       <label Content="Powershell" Margin="5,0,0,0" Foreground="White" Height="50"  FontSize="30"/>
   </StackPanel> 
  </Grid>
        <grid Grid.Row="1" >
    <stackpanel Orientation="Vertical" HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,5,5,5">
    <label x:Name = "LoadingLabel"  Foreground="White" HorizontalAlignment="Center" VerticalAlignment="Center" FontSize="24" Margin = "0,0,0,0"/>
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
    $hash.Logo.Source="C:\Users\THOR\Pictures\berserk.png"
    $hash.LoadingLabel.Content= "Your Code is loading" 
    $hash.window.ShowDialog() 
     
}) | Out-Null