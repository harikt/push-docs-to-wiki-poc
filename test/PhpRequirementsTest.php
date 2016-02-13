<?php

namespace AppTest;

/**
 * Testing PHP requirements.
 */
class PhpRequirementsTest extends \PHPUnit_Framework_TestCase
{
    public function testPhpVersion()
    {
        $this->assertTrue(phpversion() >= 5.6);
    }
}
