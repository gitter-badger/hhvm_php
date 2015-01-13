<?php

$ao = new ArrayObject();
$ao->offsetSet(1, 'Test First');
$i1 = $ao->getIterator();
$ao->offsetSet(2, 'Test Second');
$i2 = $ao->getIterator();

$exitCode = (spl_object_hash($i1) === spl_object_hash($i2)) * 1;

var_dump($exitCode);

exit($exitCode);
