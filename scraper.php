<?php

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, 'https://www.dan.me.uk/tornodes');
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (X11; Linux i586; rv:31.0) Gecko/20100101 Firefox/31.0');
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

$html = curl_exec($ch);

if(curl_errno($ch))
{
    echo curl_error($ch);
}

curl_close($ch);

$start = strpos($html, '<div class="article box">');

https://www.google.com/search?site=&tbm=isch&source=hp&biw=1355&bih=700&q=darcikhey

$end = strpos($html, '<!-- start footer -->');
$len = $end - $start;

$output = substr($html, $start, $len);

echo $output;
?>