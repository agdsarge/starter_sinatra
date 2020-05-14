require_relative './config/environment'

use Rack::MethodOverride

use ArtistsController
use SongsController

run ApplicationController
