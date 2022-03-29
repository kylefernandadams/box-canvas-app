# Box Canvas App
The Box Canvas App project is an SalesforceDX project that contains Lightning Aura Components for each Box UI Element wrapped in a Salesforce CanvasApp. These examples are designed to be used for demonstration, development, and test purposes

## Pre-Requisites

1. Install and configure the Box for Salesforce Managed Package: https://community.box.com/t5/How-to-Guides-for-Integrations/Installing-and-Configuring-Box-For-Salesforce/ta-p/180
    > Note: Dont forget to add the Box VisualForce components to each of the record type layouts.
2. Setup your Salesforce DX environment: https://developer.salesforce.com/docs/component-library/documentation/lwc/lwc.install_setup_develop
3. In VS Code, use the cmd+shift+p shortcut and select SFDX: Authorize Org.
4. Click the Deploy to Salesforce button below, login, and deploy
<a href="https://githubsfdeploy.herokuapp.com?owner=kylefernandadams&repo=box-canvas-app&ref=main">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>

5. Copy the Consumer Secret for the Box CanvasApp
- `Salesforce Setup > Apps > App Manager > Box CanvasApp > View`
- `Consumer Secret > Click to reveal > Copy`
  
6. Deploy the [box-ui-elements-heroku](https://github.com/kylefernandadams/box-ui-elements-heroku) app to Heroku
7. Clone this repository
```shell
git clone https://github.com/kylefernandadams/box-salesforce-blueprints
```

8. Change directory to box-canvas-app
9. Update the [canvasUrl](https://github.com/kylefernandadams/box-canvas-app/blob/master/force-app/main/default/connectedApps/boxCanvasApp.connectedApp-meta.xml#L5) with the domain created from the Heroku deployment
10. Update the [callbackUrl](https://github.com/kylefernandadams/box-canvas-app/blob/master/force-app/main/default/connectedApps/boxCanvasApp.connectedApp-meta.xml#L13) with the domain created from the Heroku deployment
11. Update the [contactEmail](https://github.com/kylefernandadams/box-canvas-app/blob/master/force-app/main/default/connectedApps/boxCanvasApp.connectedApp-meta.xml#L10) with your own
12. Deploy changes to Salesforce using the sfdx-cli:
```shell
sfdx force:source:deploy -p force-app -u me@example.com
```
13. Go to Lightning app builder page or Experience builder for any record type and drag and drop any of the UI Elements with Box logos.
  

## Disclaimer
This project is comprised of open source examples and should not be treated as an officially supported product. Use at your own risk. If you encounter any problems, please log an [issue](https://github.com/kylefernandadams/box-ui-elements-heroku-template/issues).

## License

The MIT License (MIT)

Copyright (c) 2022 Kyle Adams

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
