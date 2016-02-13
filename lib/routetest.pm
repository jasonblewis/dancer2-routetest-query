package routetest;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/report1' => sub {
  template 'getid',
    {target => '/report1'};
};

get '/report2' => sub {
  template 'getid',
    {target => '/report2'};
};

post '/report1' => sub {
  my $id = param('id');
  template 'report1', { id => $id };
};

post '/report2' => sub {
  my $id = param('id');
  template 'report2', { id => $id };
};



true;
