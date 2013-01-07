/*
*
* MongoDB Shell tricks and treats
*
*
* Fuad Saud © 2013
*
* http://github.com/fuadsaud
*
* Some snippets here were extracted from Tyler Brock's MongoHacker.
*
*
*/

__ansi = {
    csi: String.fromCharCode(0x1B) + '[',
    reset: '0',
    text_prop: 'm',
    bright: '1',
    foreground: '3',
    underline: '4',

    colors: {
        red: '1',
        green: '2',
        yellow: '3',
        blue: '4',
        magenta: '5',
        cyan: '6'
    }
}

function controlCode(parameters) {
  parameters = parameters || '';

  if (typeof(parameters) === 'object' && parameters instanceof Array) {
    parameters = parameters.join(';');
  }

  return __ansi.csi + String(parameters) + String(__ansi.text_prop);
}

function colorize(string, color, bright, underline) {
    var params = [];
    var code = __ansi.foreground + __ansi.colors[color];

    params.push(code);

    if ( bright === true ) params.push(__ansi.bright);
    if ( underline === true ) params.push(__ansi.underline);

    return controlCode(params) + String(string) + controlCode();
}


var welcome = function() {
  var msg = colorize('BOOM! MONGODB IS RUNNING AT ', 'red') +
              colorize(db.serverStatus().host.split('.')[0], 'green');

  print(msg);
}


welcome();

prompt = function() {
  var serverStatus, host, process;

  serverStatus = db.serverStatus();
  host = serverStatus.host.split('.')[0];

  // Workaround for colored prompt. Returning ascii color codes
  // doesn't work, so we have to print it. Donwside: we get a
  // two lines prompt.
  print(colorize(host, 'red') + ' @ ' + colorize(db, 'blue'));

  return '$ ';
}
