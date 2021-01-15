<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2009 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
namespace Org\Util;
/**
 * ArrayList实现类
 * @category   Think
 * @package  Think
 * @subpackage  Util
 * @author    liu21st <liu21st@gmail.com>
 */
class ArrayList implements IteratorAggregate {

    /**
     * 集合元素
     * @var array
     * @access protected
     */
    protected $_elements = array();

    /**
     * 架构函数
     * @access Public
     * @param string $elements  初始化数组元素
     */
    Public function __construct($elements = array()) {
        if (!empty($elements)) {
            $this->_elements = $elements;
        }
    }

    /**
     * 若要获得迭代因子，通过getIterator方法实现
     * @access Public
     * @return ArrayObject
     */
    Public function getIterator() {
        return new ArrayObject($this->_elements);
    }

    /**
     * 增加元素
     * @access Public
     * @param mixed $element  要添加的元素
     * @return boolean
     */
    Public function add($element) {
        return (array_push($this->_elements, $element)) ? true : false;
    }

    //
    Public function unshift($element) {
        return (array_unshift($this->_elements,$element))?true : false;
    }

    //
    Public function pop() {
        return array_pop($this->_elements);
    }

    /**
     * 增加元素列表
     * @access Public
     * @param ArrayList $list  元素列表
     * @return boolean
     */
    Public function addAll($list) {
        $before = $this->size();
        foreach( $list as $element) {
            $this->add($element);
        }
        $after = $this->size();
        return ($before < $after);
    }

    /**
     * 清除所有元素
     * @access Public
     */
    Public function clear() {
        $this->_elements = array();
    }

    /**
     * 是否包含某个元素
     * @access Public
     * @param mixed $element  查找元素
     * @return string
     */
    Public function contains($element) {
        return (array_search($element, $this->_elements) !== false );
    }

    /**
     * 根据索引取得元素
     * @access Public
     * @param integer $index 索引
     * @return mixed
     */
    Public function get($index) {
        return $this->_elements[$index];
    }

    /**
     * 查找匹配元素，并返回第一个元素所在位置
     * 注意 可能存在0的索引位置 因此要用===False来判断查找失败
     * @access Public
     * @param mixed $element  查找元素
     * @return integer
     */
    Public function indexOf($element) {
        return array_search($element, $this->_elements);
    }

    /**
     * 判断元素是否为空
     * @access Public
     * @return boolean
     */
    Public function isEmpty() {
        return empty($this->_elements);
    }

    /**
     * 最后一个匹配的元素位置
     * @access Public
     * @param mixed $element  查找元素
     * @return integer
     */
    Public function lastIndexOf($element) {
        for ($i = (count($this->_elements) - 1); $i > 0; $i--) {
            if ($element == $this->get($i)) { return $i; }
        }
    }

    Public function toJson() {
        return json_encode($this->_elements);
    }

    /**
     * 根据索引移除元素
     * 返回被移除的元素
     * @access Public
     * @param integer $index 索引
     * @return mixed
     */
    Public function remove($index) {
        $element = $this->get($index);
        if (!is_null($element)) { array_splice($this->_elements, $index, 1); }
        return $element;
    }

    /**
     * 移出一定范围的数组列表
     * @access Public
     * @param integer $offset  开始移除位置
     * @param integer $length  移除长度
     */
    Public function removeRange($offset , $length) {
        array_splice($this->_elements, $offset , $length);
    }

    /**
     * 移出重复的值
     * @access Public
     */
    Public function unique() {
        $this->_elements = array_unique($this->_elements);
    }

    /**
     * 取出一定范围的数组列表
     * @access Public
     * @param integer $offset  开始位置
     * @param integer $length  长度
     */
    Public function range($offset,$length=null) {
        return array_slice($this->_elements,$offset,$length);
    }

    /**
     * 设置列表元素
     * 返回修改之前的值
     * @access Public
     * @param integer $index 索引
     * @param mixed $element  元素
     * @return mixed
     */
    Public function set($index, $element) {
        $previous = $this->get($index);
        $this->_elements[$index] = $element;
        return $previous;
    }

    /**
     * 获取列表长度
     * @access Public
     * @return integer
     */
    Public function size() {
        return count($this->_elements);
    }

    /**
     * 转换成数组
     * @access Public
     * @return array
     */
    Public function toArray() {
        return $this->_elements;
    }

    // 列表排序
    Public function ksort() {
        ksort($this->_elements);
    }

    // 列表排序
    Public function asort() {
        asort($this->_elements);
    }

    // 逆向排序
    Public function rsort() {
        rsort($this->_elements);
    }

    // 自然排序
    Public function natsort() {
        natsort($this->_elements);
    }

}
