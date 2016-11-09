## Reference: https://openweathermap.org/current
$SampleAPIKey = "5f66d45584956aac253431728ba523a4"
$result = Invoke-RestMethod ("http://api.openweathermap.org/data/2.5/weather?q=Singapore&appid=" + $SampleAPIKey)
$result

