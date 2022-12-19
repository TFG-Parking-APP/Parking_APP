import matlab.net.http.*
import matlab.net.http.field.*

% ESTA ES LA MANERA ALTERNATIVA DE MANDAR EL POST CON UN BODY, PERO NO COGE
% BIEN EL JSON
%json = '{"plate":"1234NBS"}'
%body = matlab.net.http.MessageBody(json)
%contentTypeField = matlab.net.http.field.ContentTypeField('application/json');
%type1 = matlab.net.http.MediaType('text/*');
%type2 = matlab.net.http.MediaType('application/json','q','.5');
%acceptField = matlab.net.http.field.AcceptField([type1 type2]);
%header = [acceptField contentTypeField];
%method = matlab.net.http.RequestMethod.POST;
%request = matlab.net.http.RequestMessage(method,header,json);

request = RequestMessage( 'POST', ...
    [ContentTypeField( 'application/vnd.api+json' ), AcceptField('application/vnd.api+json')], ...
    '{"meta": {"key": "xxxxxx"}}' );

plate = '9874CMS'
home = 'http://localhost:3002/carMove/'
link = strcat(home, plate);
response = request.send( link );

