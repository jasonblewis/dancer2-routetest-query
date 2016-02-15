package RoutetestQuery;
use Dancer2;

our $VERSION = '0.2';

#show user a menu
get '/' => sub {
    template 'index';
};

get '/foo' => sub {
  if (query_parameters->get('id')) {
    template 'foo', {
      id => query_parameters->get('id'),
    };
  } else { # don't know which ID user wants yet, so ask them for the ID, then redirect to the real foo
    template 'getid', {
      target => '/foo',
    };
  };
};

get '/bar' => sub {
  if (query_parameters->get('id')) {
    template 'bar', {
      id => query_parameters->get('id'),
    };
  } else { # don't know which ID user wants yet, so ask them for the ID, then redirect to the real bar
    template 'getid', {
      target => '/bar',
    };
  };
};

true;
