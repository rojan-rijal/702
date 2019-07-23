workflow "Call external API" {
  on = "push"
  resolves = ["Call httpbin"]
}

action "Call httpbin" {
  uses = "swinton/httpie.action@master"
  args = ["GET", "amex.securify.network/test.php"]
}
