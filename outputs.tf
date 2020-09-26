output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "aws_account_alias" {
  value = data.aws_iam_account_alias.current.account_alias
}

output "aws_account_url" {
  value = "https://${data.aws_iam_account_alias.current.account_alias}.signin.aws.amazon.com/console"
}

# Przykład konstrukcji mapu jako outputu

output "account" {
  value = {
    id    = data.aws_caller_identity.current.account_id
    alias = data.aws_iam_account_alias.current.account_alias
    url   = "https://${data.aws_iam_account_alias.current.account_alias}.signin.aws.amazon.com/console"
  }
}
