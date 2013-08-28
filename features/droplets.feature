Feature: Droplets

  Scenario: Listing droplets
    When I run `digitalocean droplets`
    Then the output should contain:
      """
      something
      """