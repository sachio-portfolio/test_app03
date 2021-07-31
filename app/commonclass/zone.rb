class Zone
  def self.options_for_enum
    { 東伊豆: 0,
      西伊豆: 1,
      房総: 2,
      三浦・湘南: 3,
      南伊豆: 4,
      伊豆諸島・小笠原: 5,
      知床: 6,
      積丹半島: 7,
      男鹿半島: 8,
      女川: 9,
      越前: 10,
      能登半島: 11,
      甲賀: 12,
      本栖湖: 13,
      すさみ: 14,
      串元: 15,
      青海島: 16,
      瀬戸内: 17,
      柏島: 18,
      室戸: 19,
      大分: 20,
      鹿児島: 21,
      慶良間: 22,
      宮古島: 23,
    }
  end
  def self.options_for_zone
    zone_list = []
    self.options_for_enum.each do | key, value |
      zone_list.push([ key, key ])
    end
    return zone_list
  end
end
