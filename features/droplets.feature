Feature: Droplets

  @no_droplets
  Scenario: Listing no droplets
    When I run `digitalocean droplets`
    Then the output should contain:
      """
      No droplets in account
      """

  @one_droplet
  Scenario: Listing droplets
    When I run `digitalocean droplets`
    Then the output should contain:
      """
        ID         Name                 IP              Status     Size     Region
        1          droplet1             1.1.1.1         active     1        1
      """
