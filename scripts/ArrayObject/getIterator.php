<?php

$ao = new ArrayObject();
$ao->offsetSet(1, 'Test First');
$i1 = $ao->getIterator();
$ao->offsetSet(2, 'Test Second');
$i2 = $ao->getIterator();

echo var_export($i1, true), PHP_EOL;
echo var_export($i2, true), PHP_EOL;

exit (spl_object_hash($i1) === spl_object_hash($i2));
