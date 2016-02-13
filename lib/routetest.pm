package routetest;
use Dancer2;

our $VERSION = '0.1';

#show user a menu
get '/' => sub {
    template 'index';
};

# don't know which ID user wants yet, so ask them for the ID, then redirect to the real report1
get '/report1' => sub {
  template 'getid',
    {target => '/report1'};
};

# don't know which ID user wants yet, so ask them for the ID, then redirect to the real report2
get '/report2' => sub {
  template 'getid',
    {target => '/report2'};
};

#use a post to hand the id to report1
post '/report1' => sub {
  my $id = param('id');
  template 'report1', { id => $id };
};

post '/report2' => sub {
  my $id = param('id');
  template 'report2', { id => $id };
};



true;
