function NeedProxy(url, pattern) {
    try {
        return new RegExp(pattern.replace('.', '.')).test(url);
    } catch (e) {
        return false;
    }
}

function FindProxyForURL(url, host) {
    if (isResolvable(host)) {
        resolvableHost = "True"
    } else {
        resolvableHost = "False"
    };
    if (isPlainHostName(host)) {
        plainHost = "True"
    } else {
        plainHost = "False"
    };
    var list = [
        'google.com','gmail.com','gstatic.com','google-analytics.com','googleusercontent.com','doubleclick.net','googleapis.com','googlesyndication.com',
	'twitter.com','twimg.com',
	'facebook.com',
	'youtube.com','ytimg.com',
	'wordpress.com','wp.com','w.org','gravatar.com'
    ];
    var Proxy = 'SOCKS5 127.0.0.1:8080;';
    for(var i=0, l=list.length; i<l; i++) {
        if (NeedProxy(url, list[i])) {
            return Proxy;
        }
    }
    return "DIRECT;Proxy";
}
