#.........................................SET_1A...............................................................
locals {
  fset1a_zip_location = "outputs/feature_set1a.zip"
}


data "archive_file" "set1a" {
  type        = "zip"
  source_file = "./FeatureSet1/FeatureSet1A.py"
  output_path = "local.fset1a_zip_location"
}

resource "aws_lambda_function" "feature_set1a" {
  filename      = "local.fset1a_zip_location"
  function_name = "feature_set1a"
  role          = aws_iam_role.lambda_role.arn
  handler       = "FeatureSet1A.lambda_endpoint"


  source_code_hash = filebase64sha256("local.fset1a_zip_location")

  layers = [aws_lambda_layer_version.Utils.arn, var.pandas_arn]




  runtime = "python3.8"
}

#........................................SET_1B.....................................................................................

locals {
  fset1b_zip_location = "outputs/feature_set1b.zip"
}


data "archive_file" "set1b" {
  type        = "zip"
  source_file = "./FeatureSet1/FeatureSet1B.py"
  output_path = "local.fset1b_zip_location"
}

resource "aws_lambda_function" "feature_set1b" {
  filename      = "local.fset1b_zip_location"
  function_name = "feature_set1b"
  role          = aws_iam_role.lambda_role.arn
  handler       = "FeatureSet1B.lambda_endpoint"


  source_code_hash = filebase64sha256("local.fset1b_zip_location")

  layers = [aws_lambda_layer_version.Utils.arn, var.pandas_arn]




  runtime = "python3.8"
}

#..............................................SET_2A............................................................................

locals {
  fset2a_zip_location = "outputs/feature_set2a.zip"
}


data "archive_file" "set2a" {
  type        = "zip"
  source_file = "./FeatureSet2/FeatureSet2A.py"
  output_path = "local.fset2a_zip_location"
}

resource "aws_lambda_function" "feature_set2a" {
  filename      = "local.fset2a_zip_location"
  function_name = "feature_set2a"
  role          = aws_iam_role.lambda_role.arn
  handler       = "FeatureSet2A.lambda_endpoint"


  source_code_hash = filebase64sha256("local.fset2a_zip_location")

  layers = [aws_lambda_layer_version.Utils.arn, var.pandas_arn]




  runtime = "python3.8"
}