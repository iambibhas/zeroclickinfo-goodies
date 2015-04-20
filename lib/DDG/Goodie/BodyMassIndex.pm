package DDG::Goodie::BodyMassIndex;
# ABSTRACT: Write an abstract here
# Start at https://duck.co/duckduckhack/goodie_overview if you are new
# to instant answer development

use DDG::Goodie;

zci answer_type => "body_mass_index";
zci is_cached   => 1;

# Metadata.  See https://duck.co/duckduckhack/metadata for help in filling out this section.
name "BodyMassIndex";
description "Succinct explanation of what this instant answer does";
primary_example_queries "first example query", "second example query";
secondary_example_queries "optional -- demonstrate any additional triggers";
# Uncomment and complete: https://duck.co/duckduckhack/metadata#category
# category "";
# Uncomment and complete: https://duck.co/duckduckhack/metadata#topics
# topics "";
code_url "https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/BodyMassIndex.pm";
attribution github => ["GitHubAccount", "Friendly Name"],
            twitter => "twitterhandle";

# Triggers
triggers any => "bmi calculator", "body mass index calculator";

# Handle statement
handle remainder => sub {

    # validate query & check for inputs here

    return 'BMI', structured_answer => {
        id => 'body_mass_index',
        name => 'Body Mass Index Calculatior',
        data => {
            title => "Body Mass Index Calculation",
            subtitle => "optional subtitle",
            other_data => "more stuff"
        },
        meta => {
            # maybe send them to a related Wiki article?
            sourceName => "Name",
            sourceUrl  => "website.com"
        },
        templates => {
            group => 'text',
            item => 0,
            options => {
                content => 'DDH.body_mass_index.content',
                moreAt => 0
            }
        }
    };
};

1;
