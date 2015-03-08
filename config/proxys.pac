var FindProxyForURL = function(init, profiles) {
    return function(url, host) {
        "use strict";
        var result = init, scheme = url.substr(0, url.indexOf(":"));
        do {
            result = profiles[result];
            if (typeof result === "function") result = result(url, host, scheme);
        } while (typeof result !== "string" || result.charCodeAt(0) === 43);
        return result;
    };
}("+auto", {
    "+auto": function(url, host, scheme) {
        "use strict";
        if (/(?:^|\.)google\.com$/.test(host)) return "+sshproxy";
        if (/(?:^|\.)gmail\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)gstatic\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)google-analytics\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)googleusercontent\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)doubleclick\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)googleapis\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)googlesyndication\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)twitter\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)twimg.com\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)facebook\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)youtube\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)ytimg\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)wordpress\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)wp\.com$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)w\.org$/.test(host)) return "+sshproxy";
	if (/(?:^|\.)gravatar\.com$/.test(host)) return "+sshproxy";
        if (/^https?:\/\/.*\.123cha\.com\//.test(url)) return "+sshproxy";
        if (/^https?:\/\/.*\.gmail\.com\//.test(url)) return "+sshproxy";
        return "DIRECT";
    },
    "+sshproxy": function(url, host, scheme) {
        "use strict";
        if (host === "127.0.0.1" || host === "localhost" || host === "[::1]") return "DIRECT";
        return "SOCKS5 127.0.0.1:8080";
    },
    "+shadowsocks": function(url, host, scheme) {
        "use strict";
	if (host === "127.0.0.1" || host === "localhost" || host === "[::1]") return "DIRECT";
        return "SOCKS5 127.0.0.1:8081";
    },
    "+socks5": function(url, host, scheme) {
        "use strict";
	if (host === "127.0.0.1" || host === "localhost" || host === "[::1]") return "DIRECT";
        return "SOCKS5 xxx.xxx.xxx.xxx:8080";
    }
});
