

function [] = enterParking(matr)

import matlab.net.http.*
import matlab.net.http.field.*

request = RequestMessage( 'POST', ...
    [ContentTypeField( 'application/vnd.api+json' ), AcceptField('application/vnd.api+json')], ...
    '' );
uri = 'http://ec2-18-202-237-72.eu-west-1.compute.amazonaws.com/enterParking/';
uri = strcat(uri, matr);
request.send( uri );
end

