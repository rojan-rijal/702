workflow "Call external API" {
  on = "push"
  resolves = ["Call httpbin"]
}

action "Call httpbin" {
  uses = "swinton/httpie.action@master"
  args = ["GET", "http://169.254.169.254"]
}
