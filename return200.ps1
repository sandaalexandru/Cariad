# return http 200 on '/token' endpoint

$Username = 'jdoe'
$Password = 'P@S$w0rd!'

$base64Credentials = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes("${Username}:${Password}"))
$Headers = @{ 'Authorization' = "Basic $base64Credentials" }

Invoke-WebRequest -Uri 'http://localhost:8080/token/' -Headers $Headers