resource "aws_iam_user" "user1" {
  name = "jenny"
}

resource "aws_iam_user" "user2" {
  name = "rose"
}

resource "aws_iam_user" "user3" {
  name = "lisa"
}
resource "aws_iam_user" "user4" {
  name = "jisoo"
}
resource "aws_iam_group" "group1" {
  name = "blackpink"
}
resource "aws_iam_group" "group2" {
  name = "twice"
}
resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.hello1.name,
    aws_iam_user.hello2.name,
    aws_iam_user.hello3.name,
  ]

  group = aws_iam_group.group1.name
}