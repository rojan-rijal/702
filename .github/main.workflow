workflow "Call external API" {
  on = "push"
  resolves = ["Call httpbin"]
}

action "Call httpbin" {
  uses = "swinton/httpie.action@master"
  args = ["POST", "ssrf-target.service.cp1-iad.github.net/rojanwashere", "hello=world"]
}
