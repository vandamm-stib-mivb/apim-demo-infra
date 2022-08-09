# APIM Demo Infrastructure as Code

For the demo I want to set up infrastructure using Terraform so it is easily reproducable and easy to set up.

The infrastructure components we will be using are the following:

1. **Azure API Management:** This is the main resource that we will be using to implement [APIOps](https://docs.microsoft.com/en-us/azure/architecture/example-scenario/devops/automated-api-deployments-apiops).
2. **Azure App Service:** This will host our [demo API](https://github.com/vandamm-stib-mivb/apim-demo-api) application.

I'm not taking into considerations to secure and to isolate these environments since this is not the goal of the demo.