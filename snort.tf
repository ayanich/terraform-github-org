module "snort" {
  source        = "modules/repository"
  name          = "snort"
  cookbook_team = "${github_team.snort.id}"
}

resource "github_team" "snort" {
  name        = "snort"
  description = "snort Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "snort-maintainer-1" {
  team_id  = "${github_team.snort.id}"
  username = "tas50"
  role     = "maintainer"
}
