requires 'perl' => '5.016';

requires 'Text::ANSI::Fold' => '2.13';
requires 'Getopt::EX' => 'v1.27';
requires 'Getopt::EX::Hashed' => '1.03';
requires 'Term::ReadKey';

on 'test' => sub {
    requires 'Test::More' => '0.98';
};

