#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";

use RoutetestQuery;
RoutetestQuery->to_app;
