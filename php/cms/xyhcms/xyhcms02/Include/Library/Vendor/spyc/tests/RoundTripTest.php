<?php

require_once ("../Spyc.php");

function roundTrip($a) { return Spyc::YAMLLoad(Spyc::YAMLDump(array('x' => $a))); }


class RoundTripTest extends PHPUnit_Framework_TestCase {

    protected function setUp() {
    }

    Public function testNull() {
      $this->assertEquals (array ('x' => null), roundTrip (null));
    }

    Public function testY() {
      $this->assertEquals (array ('x' => 'y'), roundTrip ('y'));
    }
    
    Public function testExclam() {
      $this->assertEquals (array ('x' => '!yeah'), roundTrip ('!yeah'));
    }

    Public function test5() {
      $this->assertEquals (array ('x' => '5'), roundTrip ('5'));
    }

    Public function testSpaces() {
      $this->assertEquals (array ('x' => 'x '), roundTrip ('x '));
    }
    
    Public function testApostrophes() {
      $this->assertEquals (array ('x' => "'biz'"), roundTrip ("'biz'"));
    }

    Public function testNewLines() {
      $this->assertEquals (array ('x' => "\n"), roundTrip ("\n"));
    }

    Public function testHashes() {
      $this->assertEquals (array ('x' => array ("#color" => '#fff')), roundTrip (array ("#color" => '#fff')));
    }

    Public function testPreserveString() {
      $result1 = roundTrip ('0');
      $result2 = roundTrip ('true');
      $this->assertTrue (is_string ($result1['x']));
      $this->assertTrue (is_string ($result2['x']));
    }

    Public function testPreserveBool() {
      $result = roundTrip (true);
      $this->assertTrue (is_bool ($result['x']));
    }

    Public function testPreserveInteger() {
      $result = roundTrip (0);
      $this->assertTrue (is_int ($result['x']));
    }

    Public function testWordWrap() {
      $this->assertEquals (array ('x' => "aaaaaaaaaaaaaaaaaaaaaaaaaaaa  bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"), roundTrip ("aaaaaaaaaaaaaaaaaaaaaaaaaaaa  bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"));
    }

    Public function testABCD() {
      $this->assertEquals (array ('a', 'b', 'c', 'd'), Spyc::YAMLLoad(Spyc::YAMLDump(array('a', 'b', 'c', 'd'))));
    }
    
    Public function testABCD2() {
        $a = array('a', 'b', 'c', 'd'); // Create a simple list
        $b = Spyc::YAMLDump($a);        // Dump the list as YAML
        $c = Spyc::YAMLLoad($b);        // Load the dumped YAML
        $d = Spyc::YAMLDump($c);        // Re-dump the data
        $this->assertSame($b, $d);
    }
   
}
