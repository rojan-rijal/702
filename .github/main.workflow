workflow "s" {
  resolves = ["HTTP client"]
  on = "push"
}

action "HTTP client" {
  uses = "swinton/httpie.action@69125d73caa2c6821f6a41a86112777a37adc171"
}
