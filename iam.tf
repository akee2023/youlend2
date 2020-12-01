
#......................................lambda_policy.............................................................


resource "aws_iam_role_policy" "lambda_policy" {
  name = "lambda_policy"
  role = aws_iam_role.lambda_role.id

  policy = file("iam/lambda-policy.json")
}


#.......................................lambda_role.................................................................

resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"

  assume_role_policy = file("iam/lambda-assume-policy.json")
}