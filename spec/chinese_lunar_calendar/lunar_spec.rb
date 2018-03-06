# encoding: utf-8

require 'spec_helper'

require 'date'
require "chinese_lunar_calendar/lunar"

module ChineseLunarCalendar
  describe Lunar do

    it "should convert to chinese lunar success" do
      luanr = Lunar.new(Date.new(2012, 3, 26))
      luanr.date_in_chinese.should eq "壬辰（龙）年 三月 初五"
      luanr = Lunar.new(Date.new(1900, 1, 31))
      luanr.date_in_chinese.should eq "庚子（鼠）年 正月 初一"
    end

    it "should convert 2012 year to 壬辰 success" do
      luanr = Lunar.new(Date.new(2012, 3, 26))
      luanr.year_in_chinese.should eq "壬辰"
    end

    it "should convert 2012 year to 龙 success" do
      luanr = Lunar.new(Date.new(2012, 3, 26))
      luanr.animal.should eq "龙"
    end

    it "should convert 2012 month to 三 success" do
      luanr = Lunar.new(Date.new(2012, 3, 26))
      luanr.month_in_chinese.should eq "三"
    end

    it "should convert 2012 year to 初五 success" do
      luanr = Lunar.new(Date.new(2012, 3, 26))
      luanr.day_in_chinese.should eq "初五"
    end

    it "should convert 1983 success" do
      luanr = Lunar.new(Date.new(1983, 7, 23))
      luanr.lunar_date.should eq "1983-6-14"
    end

    it "should convert 1985 success" do
      luanr = Lunar.new(Date.new(1985, 2, 2))
      luanr.lunar_date.should eq "1984-12-13"
    end

    it "should convert 1993 success" do
      luanr = Lunar.new(::Date.new(1993, 8, 11))
      luanr.lunar_date.should eq "1993-6-24"
      luanr = Lunar.new(::Date.new(1900, 1, 31))
      luanr.lunar_date.should eq "1900-1-1"
    end

    it "should convert 2012 success" do
      luanr = Lunar.new(Date.new(2012, 3, 26))
      luanr.lunar_date.should eq "2012-3-5"
    end
  end
end