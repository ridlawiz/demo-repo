resource "aws_api_gateway_rest_api" "test-49702" {
  name = "example-rest-api2"

  endpoint_configuration {
    types            = ["EDGE"]
  }
}
