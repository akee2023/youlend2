data "archive_file" "python" {
  type        = "zip"
  source_dir  = "./python"
  output_path = "./python.zip"
}

resource "aws_lambda_layer_version" "Utils" {
  filename   = "python.zip"
  layer_name = "Utils"

  compatible_runtimes = ["python3.8"]
}


