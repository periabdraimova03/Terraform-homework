resource "aws_iam_user" "user1" {
  name = "jenny"
}

resource "aws_iam_user" "user2" {
    depends_on = [aws_iam_user.user1]
  name = "rose"
}

resource "aws_iam_user" "user3" {
    depends_on = [aws_iam_user.user2]
  name = "lisa"
}
resource "aws_iam_user" "user4" {
    depends_on = [aws_iam_user.user3]
  name = "jisoo"
}
resource "aws_iam_user" "user5" {
    depends_on = [aws_iam_user.user4]
  name = "jihyo"
}
resource "aws_iam_user" "user6" {
    depends_on = [aws_iam_user.user5]
  name = "sana"
}
resource "aws_iam_user" "miyeon" {
  name = "miyeon"
}
resource "aws_iam_user" "mina" {
  name = "mina"
}
# terraform import aws_iam_user.miyeon miyeon
# terraform import aws_iam_user.mina mina
