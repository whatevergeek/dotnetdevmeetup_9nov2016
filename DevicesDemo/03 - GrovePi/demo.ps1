#01 show message
Invoke-RestMethod ("http://<replace with GrovePi IP Address>:5000/displaymessage/" + "Hello .NET      Developers!!!")

#02 get light sensor
for(1 -eq 1){
    $sensor_value = (Invoke-RestMethod ("http://<replace with GrovePi IP Address>:5000/lightsensor")).results.sensor_value
    Write-Host ("Sensor Value: " + $sensor_value)

    if($sensor_value -gt 50) {
        Invoke-RestMethod "http://<replace with NodeMCU IP Address>/cmd?led=1"
    }
    else {
        Invoke-RestMethod "http://<replace with NodeMCU IP Address>/cmd?led=0"
    }

    Start-Sleep -m 500
}

#03 show how it works