

function [] = enterParking(matr)

import matlab.net.http.*
import matlab.net.http.field.*

request = RequestMessage( 'POST', ...
    [ContentTypeField( 'application/vnd.api+json' ), AcceptField('application/vnd.api+json')], ...
    '' );
uri = 'http://localhost:3002/enterParking/';
uri = strcat(uri, matr);
request.send( uri );
end

