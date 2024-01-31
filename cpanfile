on configure => sub {
    requires 'Module::Install';
    requires 'Module::Install::AuthorTests';
    requires 'Module::Install::Repository';
    requires 'Module::Install::XSUtil';
};
on test => sub {
    requires 'Test::More';
    requires 'Test::Requires';
    requires 'Test::Pod::Coverage';
};
