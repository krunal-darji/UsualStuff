#!/usr/bin/php
<?php
function sign_url($url, $password, $expires = false) {
    if ($expires === false) {
        $expires = time() + (60*60*12);
    }
    $parts = parse_url($url);
    if (isset($parts['query'])) {
        $sign = sprintf("%s?%s&expires=%s&pass=%s",
            $parts['path'], $parts['query'], $expires, $password);
        $new = sprintf("%s://%s%s?%s&expires=%s&token=",
            $parts['scheme'], $parts['host'], $parts['path'],
            $parts['query'], $expires);
    } else {
        $sign = sprintf("/hls?depth=1&expires=%s&pass=%s",
            $expires, $password);
        $new = sprintf("%s://%s/signed&depth=1&expires=%s&token=",
            $parts['scheme'], $parts['host'], $expires);
    }
    $token = md5($sign);
    printf("token = md5( %s )\n", $sign);
    printf("      = %s\n", $token);
    return sprintf("%s%s%s", $new, $token, $parts['path']);
}
$expires = time() + (60*60*12);
$password = "Hoodie1iOquuC2kuWiesh9eefeePuak6ohxooF8gaephei1Oshoj0EiNahku2Toh";
foreach(array_slice($_SERVER['argv'], 1) as $url) {
    printf("%s\n", sign_url($url, $password, $expires));
}
