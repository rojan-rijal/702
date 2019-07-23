workflow "Call external API" {
  on = "push"
  resolves = ["Call httpbin"]
}

action "Call httpbin" {
  uses = "swinton/httpie.action@master"
  args = ["POST", "gtdtxjblvpcwguejuwou2ayy6pci07.burpcollaborator.net/anything", "hello=world"]
}
