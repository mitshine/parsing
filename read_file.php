$filecontents = file_get_contents('search.txt');

$words = preg_split('/[\s]+/', $filecontents, -1, PREG_SPLIT_NO_EMPTY);

print_r($words);