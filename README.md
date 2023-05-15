# SSM Parameters Group

This module creates a group of SSM Parameter Store parameters from the map of key-values provided. This is particularly useful when there is a need to expose and share Terraform outputs with other stacks written in CloudFormation, Serverless Framework, etc. (both CloudFormation and the Serverless Framework support reading values from Parameter Store out of the box).

Another option to share Terraform outputs and other custom values across stacks has historically been to create a "dummy" CloudFormation stack just for the purpose of exposing such values as CF Outputs, but this is not ideal given we could consider it a misuse of CloudFormation, such logic is explained in the updated version of following article by Yan Cui:
https://theburningmonk.com/2019/03/making-terraform-and-serverless-framework-work-together/

If you still prefer to expose Terraform outputs and other values through a "dummy" CloudFormation stack, the following module achieves such functionality:
https://github.com/labinhood/terraform-aws-stack-outputs

### Usage

     module "ssm_parameters_group" {
        source = "{source}"

        parameters = {
          "param1" = "value1"
          "param2" = "value2"
          // add more parameters as needed
        }

        should_encrypt = true
        name_prefix    = "my_prefix_"
     }
