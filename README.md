# Microsoft Azure Sentiment analysis with Powershell
This script contains a basic example of how to call the Microsoft Azure Sentiment Analysis service

# Prerequisites
* Powershell v5.1
* <a href url="https://azure.microsoft.com/en-us/services/cognitive-services/">Azure Cognitive Services</a>
* <a href url="https://azure.microsoft.com/en-us/features/azure-portal/">Azure account</a>

# Instructions
Once you have created an Azure account you will also need to create a new project in Azure Cognitive Services.  Once you have done so you will be able to access the "key" that you will need as a parameter to this script.

  * <b>Key</b> - The associated key for your Azure Cognitive Services project.  Required to authenticate the api call.
  * <b>Url</b> - URL to the Azure Sentiment API (note the region is part of the call)
  * <b>Text</b> - Text to analyze.  If the returned score is less than 0.5 the text is considered to be "negative", if the score is greater than 0.5, the text is considered to be "positive."
  
Example:
```
powershell.exe -ExecutionPolicy Bypass -File "C:\Azure_Sentiment.ps1" -key "12345" -text "Hello World" -url "https://centralus.api.cognitive.microsoft.com/text/analytics/v2.1/sentiment"
```

# Disclaimer
No Support and No Warranty are provided by SMA Technologies for this project and related material. The use of this project's files is on your own risk.

SMA Technologies assumes no liability for damage caused by the usage of any of the files offered here via this Github repository.

# License
Copyright 2020 SMA Technologies

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

# Contributing
We love contributions, please read our [Contribution Guide](CONTRIBUTING.md) to get started!

# Code of Conduct
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code-of-conduct.md)
SMA Technologies has adopted the [Contributor Covenant](CODE_OF_CONDUCT.md) as its Code of Conduct, and we expect project participants to adhere to it. Please read the [full text](CODE_OF_CONDUCT.md) so that you can understand what actions will and will not be tolerated.
