<?php

require_once ("../Spyc.php");

class ParseTest extends PHPUnit_Framework_TestCase {

    protected $yaml;

    protected function setUp() {
      $this->yaml = spyc_load_file('../spyc.yaml');
    }

    Public function testMergeHashKeys() {
      $Expected =  array (
        array ('step' => array('instrument' => 'Lasik 2000', 'pulseEnergy' => 5.4, 'pulseDuration' => 12, 'repetition' => 1000, 'spotSize' => '1mm')),
        array ('step' => array('instrument' => 'Lasik 2000', 'pulseEnergy' => 5.4, 'pulseDuration' => 12, 'repetition' => 1000, 'spotSize' => '2mm')),
      );
      $Actual = spyc_load_file ('indent_1.yaml');
      $this->assertEquals ($Expected, $Actual['steps']);
    }

    Public function testDeathMasks() {
      $Expected = array ('sad' => 2, 'magnificent' => 4);
      $Actual = spyc_load_file ('indent_1.yaml');
      $this->assertEquals ($Expected, $Actual['death masks are']);
    }

    Public function testDevDb() {
      $Expected = array ('adapter' => 'mysql', 'host' => 'localhost', 'database' => 'rails_dev');
      $Actual = spyc_load_file ('indent_1.yaml');
      $this->assertEquals ($Expected, $Actual['development']);
    }

    Public function testNumericKey() {
      $this->assertEquals ("Ooo, a numeric key!", $this->yaml[1040]);
    }

    Public function testMappingsString() {
      $this->assertEquals ("Anyone's name, really.", $this->yaml['String']);
    }

    Public function testMappingsInt() {
      $this->assertSame (13, $this->yaml['Int']);
    }

    Public function testMappingsHex() {
      $this->assertSame (243, $this->yaml['Hex']);
      $this->assertSame ('f0xf3', $this->yaml['BadHex']);
    }

    Public function testMappingsBooleanTrue() {
      $this->assertSame (true, $this->yaml['True']);
    }

    Public function testMappingsBooleanFalse() {
      $this->assertSame (false, $this->yaml['False']);
    }

    Public function testMappingsZero() {
      $this->assertSame (0, $this->yaml['Zero']);
    }

    Public function testMappingsNull() {
      $this->assertSame (null, $this->yaml['Null']);
    }

    Public function testMappingsNotNull() {
      $this->assertSame ('null', $this->yaml['NotNull']);
    }

    Public function testMappingsFloat() {
      $this->assertSame (5.34, $this->yaml['Float']);
    }

    Public function testMappingsNegative() {
      $this->assertSame (-90, $this->yaml['Negative']);
    }

    Public function testMappingsSmallFloat() {
      $this->assertSame (0.7, $this->yaml['SmallFloat']);
    }

    Public function testNewline() {
      $this->assertSame ('\n', $this->yaml['NewLine']);
    }

    Public function testQuotedNewline() {
      $this->assertSame ("\n", $this->yaml['QuotedNewLine']);
    }

    Public function testSeq0() {
      $this->assertEquals ("PHP Class", $this->yaml[0]);
    }

    Public function testSeq1() {
      $this->assertEquals ("Basic YAML Loader", $this->yaml[1]);
    }

    Public function testSeq2() {
      $this->assertEquals ("Very Basic YAML Dumper", $this->yaml[2]);
    }

    Public function testSeq3() {
      $this->assertEquals (array("YAML is so easy to learn.",
											"Your config files will never be the same."), $this->yaml[3]);
    }

    Public function testSeqMap() {
      $this->assertEquals (array("cpu" => "1.5ghz", "ram" => "1 gig",
											"os" => "os x 10.4.1"), $this->yaml[4]);
    }

    Public function testMappedSequence() {
      $this->assertEquals (array("yaml.org", "php.net"), $this->yaml['domains']);
    }

    Public function testAnotherSequence() {
      $this->assertEquals (array("program" => "Adium", "platform" => "OS X",
											"type" => "Chat Client"), $this->yaml[5]);
    }

    Public function testFoldedBlock() {
      $this->assertEquals ("There isn't any time for your tricks!\nDo you understand?", $this->yaml['no time']);
    }

    Public function testLiteralAsMapped() {
      $this->assertEquals ("There is nothing but time\nfor your tricks.", $this->yaml['some time']);
    }

    Public function testCrazy() {
      $this->assertEquals (array( array("name" => "spartan", "notes" =>
																			array( "Needs to be backed up",
																						 "Needs to be normalized" ),
																			 "type" => "mysql" )), $this->yaml['databases']);
    }

    Public function testColons() {
      $this->assertEquals ("like", $this->yaml["if: you'd"]);
    }

    Public function testInline() {
      $this->assertEquals (array("One", "Two", "Three", "Four"), $this->yaml[6]);
    }

    Public function testNestedInline() {
      $this->assertEquals (array("One", array("Two", "And", "Three"), "Four", "Five"), $this->yaml[7]);
    }

    Public function testNestedNestedInline() {
      $this->assertEquals (array( "This", array("Is", "Getting", array("Ridiculous", "Guys")),
									"Seriously", array("Show", "Mercy")), $this->yaml[8]);
    }

    Public function testInlineMappings() {
      $this->assertEquals (array("name" => "chris", "age" => "young", "brand" => "lucky strike"), $this->yaml[9]);
    }

    Public function testNestedInlineMappings() {
      $this->assertEquals (array("name" => "mark", "age" => "older than chris",
											 "brand" => array("marlboro", "lucky strike")), $this->yaml[10]);
    }

    Public function testReferences() {
      $this->assertEquals (array('Perl', 'Python', 'PHP', 'Ruby'), $this->yaml['dynamic languages']);
    }

    Public function testReferences2() {
      $this->assertEquals (array('C/C++', 'Java'), $this->yaml['compiled languages']);
    }

    Public function testReferences3() {
      $this->assertEquals (array(
																		array('Perl', 'Python', 'PHP', 'Ruby'),
																		array('C/C++', 'Java')
																	 ), $this->yaml['all languages']);
    }

    Public function testEscapedQuotes() {
      $this->assertEquals ("you know, this shouldn't work.  but it does.", $this->yaml[11]);
    }

    Public function testEscapedQuotes_2() {
      $this->assertEquals ( "that's my value.", $this->yaml[12]);
    }

    Public function testEscapedQuotes_3() {
      $this->assertEquals ("again, that's my value.", $this->yaml[13]);
    }

    Public function testQuotes() {
      $this->assertEquals ("here's to \"quotes\", boss.", $this->yaml[14]);
    }

    Public function testQuoteSequence() {
      $this->assertEquals ( array( 'name' => "Foo, Bar's", 'age' => 20), $this->yaml[15]);
    }

    Public function testShortSequence() {
      $this->assertEquals (array( 0 => "a", 1 => array (0 => 1, 1 => 2), 2 => "b"), $this->yaml[16]);
    }

    Public function testQuotedNewlines() {
      $this->assertEquals ("First line\nSecond line\nThird line", $this->yaml[17]);
    }

    Public function testHash_1() {
      $this->assertEquals ("Hash", $this->yaml['hash_1']);
    }

    Public function testHash_2() {
      $this->assertEquals ('Hash #and a comment', $this->yaml['hash_2']);
    }

    Public function testHash_3() {
      $this->assertEquals ('Hash (#) can appear in key too', $this->yaml['hash#3']);
    }

    Public function testEndloop() {
      $this->assertEquals ("Does this line in the end indeed make Spyc go to an infinite loop?", $this->yaml['endloop']);
    }

    Public function testReallyLargeNumber() {
      $this->assertEquals ('115792089237316195423570985008687907853269984665640564039457584007913129639936', $this->yaml['a_really_large_number']);
    }

    Public function testFloatWithZeros() {
      $this->assertSame ('1.0', $this->yaml['float_test']);
    }

    Public function testFloatWithQuotes() {
      $this->assertSame ('1.0', $this->yaml['float_test_with_quotes']);
    }

    Public function testFloatInverse() {
      $this->assertEquals ('001', $this->yaml['float_inverse_test']);
    }

    Public function testIntArray() {
      $this->assertEquals (array (1, 2, 3), $this->yaml['int array']);
    }

    Public function testArrayOnSeveralLines() {
      $this->assertEquals (array (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19), $this->yaml['array on several lines']);
    }

    Public function testArrayWithCommas() {
      $this->assertEquals(array (0, 1), $this->yaml['array with commas']);
    }

    Public function testmoreLessKey() {
      $this->assertEquals ('<value>', $this->yaml['morelesskey']);
    }

    Public function testArrayOfZero() {
      $this->assertSame (array(0), $this->yaml['array_of_zero']);
    }

    Public function testSophisticatedArrayOfZero() {
      $this->assertSame (array('rx' => array ('tx' => array (0))), $this->yaml['sophisticated_array_of_zero']);
    }

    Public function testSwitches() {
      $this->assertEquals (array (array ('row' => 0, 'col' => 0, 'func' => array ('tx' => array(0, 1)))), $this->yaml['switches']);
    }

    Public function testEmptySequence() {
      $this->assertSame (array(), $this->yaml['empty_sequence']);
    }

    Public function testEmptyHash() {
      $this->assertSame (array(), $this->yaml['empty_hash']);
    }

    Public function testEmptykey() {
      $this->assertSame (array('' => array ('key' => 'value')), $this->yaml['empty_key']);
    }

    Public function testMultilines() {
      $this->assertSame (array(array('type' => 'SomeItem', 'values' => array ('blah', 'blah', 'blah', 'blah'), 'ints' => array(2, 54, 12, 2143))), $this->yaml['multiline_items']);
    }

    Public function testManyNewlines() {
      $this->assertSame ('A quick
fox


jumped
over





a lazy



dog', $this->yaml['many_lines']);
    }

    Public function testWerte() {
      $this->assertSame (array ('1' => 'nummer 1', '0' => 'Stunde 0'), $this->yaml['werte']);
    }

    /* Public function testNoIndent() {
      $this->assertSame (array(
        array ('record1'=>'value1'),
        array ('record2'=>'value2')
      )
      , $this->yaml['noindent_records']);
    } */

    Public function testColonsInKeys() {
      $this->assertSame (array (1000), $this->yaml['a:1']);
    }

    Public function testColonsInKeys2() {
      $this->assertSame (array (2000), $this->yaml['a:2']);
    }

    Public function testUnquotedColonsInKeys() {
        $this->assertSame (array (3000), $this->yaml['a:3']);
    }

    Public function testComplicatedKeyWithColon() {
        $this->assertSame(array("a:b:''test'" => 'value'), $this->yaml['complex_unquoted_key']);
    }

    Public function testKeysInMappedValueException() {
        $this->setExpectedException('Exception');
        Spyc::YAMLLoad('x: y: z:');
    }

    Public function testKeysInValueException() {
        $this->setExpectedException('Exception');
        Spyc::YAMLLoad('x: y: z');
    }

    Public function testSpecialCharacters() {
      $this->assertSame ('[{]]{{]]', $this->yaml['special_characters']);
    }

    Public function testAngleQuotes() {
      $Quotes = Spyc::YAMLLoad('quotes.yaml');
      $this->assertEquals (array ('html_tags' => array ('<br>', '<p>'), 'html_content' => array ('<p>hello world</p>', 'hello<br>world'), 'text_content' => array ('hello world')),
          $Quotes);
    }

    Public function testFailingColons() {
      $Failing = Spyc::YAMLLoad('failing1.yaml');
      $this->assertSame (array ('MyObject' => array ('Prop1' => array ('key1:val1'))),
          $Failing);
    }

    Public function testQuotesWithComments() {
      $Expected = 'bar';
      $Actual = spyc_load_file ('comments.yaml');
      $this->assertEquals ($Expected, $Actual['foo']);
    }

    Public function testArrayWithComments() {
      $Expected = array ('x', 'y', 'z');
      $Actual = spyc_load_file ('comments.yaml');
      $this->assertEquals ($Expected, $Actual['arr']);
    }

    Public function testAfterArrayWithKittens() {
      $Expected = 'kittens';
      $Actual = spyc_load_file ('comments.yaml');
      $this->assertEquals ($Expected, $Actual['bar']);
    }

    // Plain characters http://www.yaml.org/spec/1.2/spec.html#id2789510
    Public function testKai() {
      $Expected = array('-example' => 'value');
      $Actual = spyc_load_file ('indent_1.yaml');
      $this->assertEquals ($Expected, $Actual['kai']);
    }

    Public function testKaiList() {
      $Expected = array ('-item', '-item', '-item');
      $Actual = spyc_load_file ('indent_1.yaml');
      $this->assertEquals ($Expected, $Actual['kai_list_of_items']);
    }

    Public function testDifferentQuoteTypes() {
      $expected = array ('Something', "", "", "Something else");
      $this->assertSame ($expected, $this->yaml['invoice']);
    }

    Public function testDifferentQuoteTypes2() {
      $expected = array ('Something', "Nothing", "Anything", "Thing");
      $this->assertSame ($expected, $this->yaml['quotes']);
    }

    // Separation spaces http://www.yaml.org/spec/1.2/spec.html#id2778394
    Public function testMultipleArrays() {
      $expected = array(array(array('x')));
      $this->assertSame($expected, Spyc::YAMLLoad("- - - x"));
    }
}
