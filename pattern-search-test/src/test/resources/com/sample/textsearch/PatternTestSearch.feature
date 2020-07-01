Feature: Program PatternSearch searches for the pattern string in the text string and returns the offset of the first occurrence of the pattern string in the text string

Scenario Outline: The program will return the valid offset of a substring that exists within a string.
Given I input '<text>' as the text and '<pattern>' as pattern
Then I get the offset of '<result>' as the result

#Please note, that every first row in a table is a column header.

Examples:
| text                                       | pattern   | result | 
| catfish                                    | cat       | 0      |
| moreoverihavenotdecidedtoparticipateinthat | inthat    | 36     |
| what a beautiful day                       | beautiful | 7      |
| not in this lifetime                       | in this   | 4      |
| aaaaaaaaaaaaa                              | a         | 0      |

Scenario Outline: The program will return the offset of the first substring encountered, even if there are more matches later in the searched text.
Given I input '<text>' as the text and '<pattern>' as pattern
Then I get the offset of '<result>' as the result

Examples:
| text                                       | pattern   | result | 
| catcatcatcatcatcatcatcatcat                | cat       | 0      |
| my grandmother is a mother of my mother    | mother    | 8      |

Scenario Outline: The program will return the length of the searched text if there are no matches.
Given I input '<text>' as the text and '<pattern>' as pattern
Then I get the offset of '<result>' as the result

Examples:
| text                                       | pattern   | result | 
| I want you to know that i am not ready     | steady    | 38     |
| born in the usa                            | russia    | 15     |
| char                                       | chars     | 4      |
| Green                                      | green     | 5      |

Scenario Outline: The program will match only the exact pattern. If there are letters between otherwise matching pattern, that is not a match
Given I input '<text>' as the text and '<pattern>' as pattern
Then I get the offset of '<result>' as the result

Examples:
| text                     | pattern         | result | 
| borneochimpanzeegorilla  | borneogorilla   | 23     |
| my dog likes my music    | dog likes music | 21     |
| my singing skills        | mysinging       | 17     |

Scenario Outline: The program will work properly, when matching strings containing special characters.
Given I input '<text>' as the text and '<pattern>' as pattern
Then I get the offset of '<result>' as the result

Examples:
| text                        | pattern    | result | 
| b!@#$%^&*()'"-_+=`~         | $%         | 4      |
| abc\tdefcrab                | crab       | 8      |
| termina\tor                 | \to        | 7      |

Scenario: The program will work correctly even when text program searches through contains "\n" in it. 
Given I input a text that could be parsed as containing a new line char
Then the program will still parse it as backslash and n and return valid offset