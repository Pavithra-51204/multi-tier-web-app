resource "aws_iam_role" "eks" {
  name = "eks-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy_attachment" "eks_policy" {
  name       = "eks_policy_attachment"
  roles      = [aws_iam_role.eks.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}