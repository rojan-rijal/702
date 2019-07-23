workflow "Call external API" {
  on = "push"
  resolves = ["Call httpbin"]
}

action "Call httpbin" {
  uses = "swinton/httpie.action@master"
  args = ["GET", "ssrf-target.service.cp1-iad.github.net/some-url-of-your-choice","--help"]
}
