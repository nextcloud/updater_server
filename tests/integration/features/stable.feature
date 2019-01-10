Feature: Testing the update scenario of stable releases

  Scenario: Updating an outdated ownCloud 8.2.5 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 9.0.55 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "9.0.55"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an up-to-date staged Nextcloud 10.0.6 with PHP 5.4 on the stable channel
    Given There is a release with channel "stable"
    And The received PHP version is "5.4.0"
    And the installation mtime is "60"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an outdated Nextcloud 10.0.2 on the stable channel without PHP version
    Given There is a release with channel "stable"
    And The received version is "9.1.2.0"
    When The request is sent
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an up-to-date staged Nextcloud 10.0.6 with PHP 5.6 on the stable channel
    Given There is a release with channel "stable"
    And The received PHP version is "5.6.0"
    And the installation mtime is "60"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.8.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    CaYUimboWU3dURynPxieGo9V8KoNHe5js2XdivdjWQ1vsyfsnz1Nim33c0bQWzA5
    PosPk3vMUWxJpNKP92D0uyz1Xutkc/tCgsjsXrDaMzl1HUZ9W/PFWEtXTddD5fbJ
    8idQFiyiXNNpdDJ/gZjaUZcLWEgMI9MVoeFyKY1OORuJz1e9+I/UBHMTGo81H63X
    ApiCSIfXvfvbMMA6DOtorWjDJoHvCkrLef3zqEDDL5bF8NGVE/9f2hh2vSlJex45
    ko5tNR4IIGM3bIRBhw9455+Tc3dVZEpGBr6Yy3vSJmrQKYQ/degEe+S7ZWyVc3TQ
    ZH1PxQilL7ihAvnOb2oU1Q==
    """

  Scenario: Updating a non-staged outdated Nextcloud 11.0.0 stable without PHP version
    Given There is a release with channel "stable"
    And The received version is "11.0.0.2"
    And The installation mtime is "20"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating a staged outdated Nextcloud 11.0.0 stable without PHP version
    Given There is a release with channel "stable"
    And The received version is "11.0.0.2"
    And The installation mtime is "15"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating a non-staged outdated Nextcloud 11.0.0 beta on the empty channel - will use the stable channel then
    Given There is a release with channel ""
    And The received version is "11.0.0.2"
    And the installation mtime is "20"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.9.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.9.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    rehJgqUaStoNHib1vsA6HDqa7fnbyLQzRhobahQvBV/YUBHAroRkOyWKbEeUak87
    fHYHYs/pVmqE83cHxMhx5lmKQ/syQLS+pF7dHCP26fiz9kink61c2R2qOXpevIUQ
    isN1KoNp6qW9y9o9yoyWzMcu4tM+QL9HYFv//5pIXToi6ZmPXgZHtMNsypi31vyg
    W2agvoSrpWLH1qt6LNAQPq+3MreY2IM7aW9VQedH0yXbcLOoe6yW/9EP956kuW0t
    bEcPOMbL1oHIBx5Vb5gbRyVDYmdSX5FBgGz8WV2Gdrhq2vHF2bb62TkxcL3xCWtA
    l7z9Jqz0zO2ZF21HB5bkhA==
    """

  Scenario: Updating a non-staged outdated Nextcloud 11.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    And The installation mtime is "20"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating a non-staged up-to-date Nextcloud 11.0.0 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "11.0.6.1"
    And The installation mtime is "20"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating an up-to-date Nextcloud 11.0.0 on the stable channel without mtime
    Given There is a release with channel "stable"
    And The received version is "11.0.6.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

 Scenario: Updating an outdated Nextcloud 12.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "12.0.0.16"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.9.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.9.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    rehJgqUaStoNHib1vsA6HDqa7fnbyLQzRhobahQvBV/YUBHAroRkOyWKbEeUak87
    fHYHYs/pVmqE83cHxMhx5lmKQ/syQLS+pF7dHCP26fiz9kink61c2R2qOXpevIUQ
    isN1KoNp6qW9y9o9yoyWzMcu4tM+QL9HYFv//5pIXToi6ZmPXgZHtMNsypi31vyg
    W2agvoSrpWLH1qt6LNAQPq+3MreY2IM7aW9VQedH0yXbcLOoe6yW/9EP956kuW0t
    bEcPOMbL1oHIBx5Vb5gbRyVDYmdSX5FBgGz8WV2Gdrhq2vHF2bb62TkxcL3xCWtA
    l7z9Jqz0zO2ZF21HB5bkhA==
    """

 Scenario: Updating an up-to-date Nextcloud 12.0.5 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "12.0.5.3"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.9.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.9.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    rehJgqUaStoNHib1vsA6HDqa7fnbyLQzRhobahQvBV/YUBHAroRkOyWKbEeUak87
    fHYHYs/pVmqE83cHxMhx5lmKQ/syQLS+pF7dHCP26fiz9kink61c2R2qOXpevIUQ
    isN1KoNp6qW9y9o9yoyWzMcu4tM+QL9HYFv//5pIXToi6ZmPXgZHtMNsypi31vyg
    W2agvoSrpWLH1qt6LNAQPq+3MreY2IM7aW9VQedH0yXbcLOoe6yW/9EP956kuW0t
    bEcPOMbL1oHIBx5Vb5gbRyVDYmdSX5FBgGz8WV2Gdrhq2vHF2bb62TkxcL3xCWtA
    l7z9Jqz0zO2ZF21HB5bkhA==
    """

 Scenario: Updating an up-to-date Nextcloud 12.0.5 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "12.0.5.3"
    And The received PHP version is "5.6.0"
    And the installation mtime is "65"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.9.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.9.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    rehJgqUaStoNHib1vsA6HDqa7fnbyLQzRhobahQvBV/YUBHAroRkOyWKbEeUak87
    fHYHYs/pVmqE83cHxMhx5lmKQ/syQLS+pF7dHCP26fiz9kink61c2R2qOXpevIUQ
    isN1KoNp6qW9y9o9yoyWzMcu4tM+QL9HYFv//5pIXToi6ZmPXgZHtMNsypi31vyg
    W2agvoSrpWLH1qt6LNAQPq+3MreY2IM7aW9VQedH0yXbcLOoe6yW/9EP956kuW0t
    bEcPOMbL1oHIBx5Vb5gbRyVDYmdSX5FBgGz8WV2Gdrhq2vHF2bb62TkxcL3xCWtA
    l7z9Jqz0zO2ZF21HB5bkhA==
    """

 Scenario: Updating an outdated Nextcloud 13.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "13.0.0.16"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.5.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.5.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    KCO++3gyzi7PspJAUYi3TZSQ5EuOvqSrPI/8MBnxVXO02Y8eHAvLiTjhhD8lKr5w
    tUNzyRHo7Z/kE6Xt+0fOoX4F8Gf7iEaUVB8x5mtVgsXr0pvDfKi93G9GOkw08gxb
    vZcGukrUoUOi0ucSrGxhZ2lHsACRDX1iXO8GZNqnvjIA1Gohk8p20KBSlyMm068u
    T6bnPAQ6k/vrqFxEMOgzBNw4Cg0sGWhE+vwKzXfwMGdrryN18TeKhypkKdplMXwn
    hTq/vUnyD3bhC5f0lJfpcqkuBhP1l6Ja+oTCjqbPKbzOpmYfpVdKrYRqWnUlDdyq
    St9cq7OeQ30WeGCYSstb7g==
    """

 Scenario: Updating an outdated Nextcloud 13.0.0 beta on the stable channel (php 5.6)
    Given There is a release with channel "stable"
    And The received version is "13.0.0.16"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.9.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.9.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    rehJgqUaStoNHib1vsA6HDqa7fnbyLQzRhobahQvBV/YUBHAroRkOyWKbEeUak87
    fHYHYs/pVmqE83cHxMhx5lmKQ/syQLS+pF7dHCP26fiz9kink61c2R2qOXpevIUQ
    isN1KoNp6qW9y9o9yoyWzMcu4tM+QL9HYFv//5pIXToi6ZmPXgZHtMNsypi31vyg
    W2agvoSrpWLH1qt6LNAQPq+3MreY2IM7aW9VQedH0yXbcLOoe6yW/9EP956kuW0t
    bEcPOMbL1oHIBx5Vb5gbRyVDYmdSX5FBgGz8WV2Gdrhq2vHF2bb62TkxcL3xCWtA
    l7z9Jqz0zO2ZF21HB5bkhA==
    """

 Scenario: Updating an up-to-date Nextcloud 13.0.7 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "13.0.7.2"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.5.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.5.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    KCO++3gyzi7PspJAUYi3TZSQ5EuOvqSrPI/8MBnxVXO02Y8eHAvLiTjhhD8lKr5w
    tUNzyRHo7Z/kE6Xt+0fOoX4F8Gf7iEaUVB8x5mtVgsXr0pvDfKi93G9GOkw08gxb
    vZcGukrUoUOi0ucSrGxhZ2lHsACRDX1iXO8GZNqnvjIA1Gohk8p20KBSlyMm068u
    T6bnPAQ6k/vrqFxEMOgzBNw4Cg0sGWhE+vwKzXfwMGdrryN18TeKhypkKdplMXwn
    hTq/vUnyD3bhC5f0lJfpcqkuBhP1l6Ja+oTCjqbPKbzOpmYfpVdKrYRqWnUlDdyq
    St9cq7OeQ30WeGCYSstb7g==
    """

 Scenario: Updating an up-to-date Nextcloud 13.0.9 on the stable channel (late update)
    Given There is a release with channel "stable"
    And The received version is "13.0.9.2"
    And The received PHP version is "7.0.0"
    And the installation mtime is "65"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.5.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.5.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    KCO++3gyzi7PspJAUYi3TZSQ5EuOvqSrPI/8MBnxVXO02Y8eHAvLiTjhhD8lKr5w
    tUNzyRHo7Z/kE6Xt+0fOoX4F8Gf7iEaUVB8x5mtVgsXr0pvDfKi93G9GOkw08gxb
    vZcGukrUoUOi0ucSrGxhZ2lHsACRDX1iXO8GZNqnvjIA1Gohk8p20KBSlyMm068u
    T6bnPAQ6k/vrqFxEMOgzBNw4Cg0sGWhE+vwKzXfwMGdrryN18TeKhypkKdplMXwn
    hTq/vUnyD3bhC5f0lJfpcqkuBhP1l6Ja+oTCjqbPKbzOpmYfpVdKrYRqWnUlDdyq
    St9cq7OeQ30WeGCYSstb7g==
    """

 Scenario: Updating an up-to-date Nextcloud 13.0.9 on the stable channel (php 5.6)
    Given There is a release with channel "stable"
    And The received version is "13.0.9.2"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is empty


 Scenario: Updating an outdated Nextcloud 14.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "14.0.0.18"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.1.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    TLDjin37xBG/rxTw/Bvm6q42y8KmCEZ+FT+CYJcMTXM88mN1cICT24wAtxucYtfr
    pXEn1/S7EXOjl1fROQ/dr3E9FBARR7u2Vvchg+VuW+hPqCNnqq0bAR/TrmjA4tcP
    TfeWZT3DZRgoKHYAlgGp/mXOe6K/MyGdz7jRtGYFgkkGc+zngzdNFJuY6fdnve2a
    n2nFFEWe7g4UI14pkjtxslJ1j4akEjXe5203svhGlGs716CJbslABK6nB1CGb/fO
    YsnlitOiARDqIYH51UaWpgpUkToaTiSAVHBBKpib8KM37zeWenemfU8lzrB9M4fA
    gFC6Mb5/4XZWdvmW2eLZYw==
    """

 Scenario: Updating an up-to-date Nextcloud 14.0.5 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "14.0.5.2"
    And The received PHP version is "7.0.0"
    And the installation mtime is "90"
    When The request is sent
    Then The response is empty

 Scenario: Updating an outdated Nextcloud 15.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "15.0.0.9"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.1.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    TLDjin37xBG/rxTw/Bvm6q42y8KmCEZ+FT+CYJcMTXM88mN1cICT24wAtxucYtfr
    pXEn1/S7EXOjl1fROQ/dr3E9FBARR7u2Vvchg+VuW+hPqCNnqq0bAR/TrmjA4tcP
    TfeWZT3DZRgoKHYAlgGp/mXOe6K/MyGdz7jRtGYFgkkGc+zngzdNFJuY6fdnve2a
    n2nFFEWe7g4UI14pkjtxslJ1j4akEjXe5203svhGlGs716CJbslABK6nB1CGb/fO
    YsnlitOiARDqIYH51UaWpgpUkToaTiSAVHBBKpib8KM37zeWenemfU8lzrB9M4fA
    gFC6Mb5/4XZWdvmW2eLZYw==
    """

  Scenario: Updating an up-to-date Nextcloud 14.0.5 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "14.0.5.2"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.1.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.1.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    TLDjin37xBG/rxTw/Bvm6q42y8KmCEZ+FT+CYJcMTXM88mN1cICT24wAtxucYtfr
    pXEn1/S7EXOjl1fROQ/dr3E9FBARR7u2Vvchg+VuW+hPqCNnqq0bAR/TrmjA4tcP
    TfeWZT3DZRgoKHYAlgGp/mXOe6K/MyGdz7jRtGYFgkkGc+zngzdNFJuY6fdnve2a
    n2nFFEWe7g4UI14pkjtxslJ1j4akEjXe5203svhGlGs716CJbslABK6nB1CGb/fO
    YsnlitOiARDqIYH51UaWpgpUkToaTiSAVHBBKpib8KM37zeWenemfU8lzrB9M4fA
    gFC6Mb5/4XZWdvmW2eLZYw==
    """
