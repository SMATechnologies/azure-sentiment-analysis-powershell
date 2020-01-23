param(
        $Key
        ,$url = "https://centralus.api.cognitive.microsoft.com/text/analytics/v2.1/sentiment"
        ,$Text = "test"
)

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$hdr = @{"Ocp-Apim-Subscription-Key" = $key}
$body = @{
    documents = @( 
        @{
            id = '1'
            text = $Text
        }
    )
}


try
{
    $response = Invoke-RestMethod -Method Post -Uri $url -Headers $hdr -Body ($body | ConvertTo-Json) -ContentType 'application/json'
}
catch [Exception]
{
    write-host $_.Exception.Message
    Exit 100
}

if($response.documents[0].score -gt 0.5)
{
    Write-Host "Text:  "$text
    Write-Host "Score: "$response.documents[0].score
    Write-Host "Response was positive"
}
else
{
    Write-Host "Text:  "$text
    Write-Host "Score: "$response.documents[0].score
    Write-Host "Response was negative"
    Exit 100
}
