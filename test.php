<?php
// URL to send the POST request
$url = "https://dms.smartfren.com/snoc/login?locale=en_US";

// Initialize cURL session
$ch = curl_init($url);

// Set POST fields
$postData = http_build_query([
    'username' => 'SKSK0992',
    'password' => 'Yuan1304',
    'execution' => '8a7bd2e2-599d-43b9-bca4-92b2aec2468d_ZXlKaGJHY2lPaUpJVXpVeE1pSjkudFV5b0dFN1g4N1NYc1RoN2dDcFRyK3FmSDJrTUVoZWxVRXFRY3pXa3VkWENpdGY2Z0pWOTRpVGduck01eXFzOXZLZk15NVRSK2s1Zzc1SGQvZVRpakpSdmFOcER6bnVPUmdVWmZJaVZwdDFxcFdFR3VYNVN5dkJVVGhwbUR4RDA5R0lJQlczSkM2YXVISHhPb1BJMW0rWkNENm1zYTZEU1QxRi9BRzc5RFBvaE5GblZybFdLQ1Z6WVJVNDN0TVQ2citaY2h1R1FSUjVNRGJVbWtQMm92WXV5dHZ3ZzRmaWorYVJURHJZU29BTDloQld6S2pMbHo1eEdaeEtmd1FmTitNSkt4TFdqVWJLUW9Vd2dnZDJJRmI2Wit0S3BaS2ZGbHMzUmRHQ0pLQ1diYWlWcXZQaEZ1UXgzNEF6aHJscWI2R0dOR1RhSjhMWlpJVEErMXp1ZUNGNDA4NkpDRFc3QmNKaFR6MjE4eHRiQ1VoWTF1N2xjYTh1NFdYK2MxVk9pYkZlRXp3WjZuYVJYOGpJbUswSm1TVnQwVjJGKzVkcjB5bWErSm1OcmlaTWE1ZWRtTHBzRC9rSmlCV25VOUhGVWRMNWFrS1RpWXA5OUpHN2d4SlZhdjgxRTdVSzd0cEdrRU1lVkFOeW5CS3ZtTFBJdk9sbUNjQU0xQS9mZVJ5dUc1R2thRTY1RlB1RW91dEZ4bWQwZ0dpZE51eG9DMFhjaGRpSVhZcjdrdkphejhvWllUNFpNZnBNTlNVL3FpRVAyTVdhbXhCUFUvTDJhNmljL0Znd0REUnF1dEhGNUhGQVBMTHlSaVg2MGNVQm1YSTVBd2tOODZHYStUY2ZCTCt5S0FINnM0YTNvVDlQUGUvenZnbEl3ZWg1UitDUzlZb29oOUNXNUxqYmRibmhZWlhSN3V5Yyt5SW5vSFZIZWE0dU1KMTdmSnNNbVhVL2h0MlhlOUpHQzM5dytML1JFUkQ5SG1zd1Z1ZFBVeHJKUmVacGdZSmd4L2U3RDNPV2N0WXAxbTd3WlZnY2ZHbHZFNHg1OWJoY3hOVkJrWmQvSitKTHNEMHk3YU1VZ0xMYk1CV2M0NmpRMDJ6dDJFY0tycUQzYVNicjhZOHNQUHQ5M3BjUzhFREd2djFCTEpyM2JsMVVLTXFFeWpzaDdUY0YyeW1QZ3RNbmVBcERxUGlBQXk1Sm1iOFFVVmRhZnVOR3VSdkZpYk9sVjZGNEx3ZUlFenlpUGhnNkwvMFVtZ3l0TjJvYTZvd2s0NGZKYXpNeTFyS280UXFiWG42SFpJVXArM2FBNldtZmxld2lRT2kyU09paHo4V25NL0R5cGQ3OD0ub29EM1N3bzRIblVwcU8zZGRqd2s0RzdfSjk2WGNqeU5FNUxMRmh4QmlnS3RKT1pHdHBDQlZKdlA3NVRvdHBDUDByanUzSEtHenVWcjZpckNGd2dpS0E=',
    '_eventId' => 'submit',
    'geolocation' => '',
    'timezoneOffset' => '-480'
]);

// Set the headers
$headers = [
    // "Cookie: TS01a046e1=01b5cb327fb6a29cdcedbe5b1b3c59bfb29a053ba59cf3c93b21b4ac7b69b49a2eb0f80a3bdce4e8fb3b6e054c2b6eef86465505270631dafc5c6435002d84fec805accf5a3faabf7d68e8d9bed1d717e8f6f5de3b; JSESSIONID=F33093A30E2BC6C5036A14F1B48C5F11; TS0116bbd6=01b5cb327f20c4db5057d7b43b19fc7a3bcb3a99535cab8bc80eac8aaf38d59a775a2043da68ca510c9ea7e27a818f67d10b1f9f2acab5ec3c836f7043ed489ca9d7291581b6a30c8ec0e9b5d435a9816949889c0f6110af35d28b08cd265eb906b211a820; BIGipServerPool_VIVA_UI=295702538.47873.0000; org.springframework.web.servlet.i18n.CookieLocaleResolver.LOCALE=en_US; TS01a046e1=01b5cb327fe4003798875dbf5e46101657ad27d8395cab8bc80eac8aaf38d59a775a2043da68ca510c9ea7e27a818f67d10b1f9f2acab5ec3c836f7043ed489ca9d72915814a310f87d2bfe07ea78a6acde912e7e6",
    "Cache-Control: max-age=0",
    "Sec-Ch-Ua: \"Chromium\";v=\"130\", \"Brave\";v=\"130\", \"Not?A_Brand\";v=\"99\"",
    "Sec-Ch-Ua-Mobile: ?0",
    "Sec-Ch-Ua-Platform: \"macOS\"",
    "Origin: https://dms.smartfren.com",
    "Content-Type: application/x-www-form-urlencoded",
    "Upgrade-Insecure-Requests: 1",
    "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36",
    "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8",
    "Sec-Gpc: 1",
    "Accept-Language: en-US,en;q=0.8",
    "Sec-Fetch-Site: same-origin",
    "Sec-Fetch-Mode: navigate",
    "Sec-Fetch-User: ?1",
    "Sec-Fetch-Dest: document",
    "Referer: https://dms.smartfren.com/snoc/login?locale=en_US",
    "Accept-Encoding: gzip, deflate, br",
    "Priority: u=0, i"
];

// Set cURL options
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); // Return response as string
curl_setopt($ch, CURLOPT_POST, true); // Set method to POST
curl_setopt($ch, CURLOPT_POSTFIELDS, $postData); // Add POST data
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers); // Add headers
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true); // Follow redirects if any

// Path untuk menyimpan cookie jar
$cookieFile = __DIR__ . "/cookie.txt";
curl_setopt($ch, CURLOPT_COOKIEJAR, $cookieFile);
curl_setopt($ch, CURLOPT_COOKIEFILE, $cookieFile);


// Eksekusi permintaan dan ambil respons
$response = curl_exec($ch);

// Cek kesalahan
if (curl_errno($ch)) {
    echo 'Error:' . curl_error($ch);
} else {
    echo $response;
}

