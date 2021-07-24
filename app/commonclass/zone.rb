class Zone
  def self.options_for_enum
    { 東伊豆: 0,
      西伊豆: 1,
      房総: 2,
      三浦・湘南: 3,
      南伊豆: 4,
      伊豆諸島・小笠原: 5,
      知床: 6,
      女川: 7,
      越前: 8,
      本栖湖: 9,
      串元: 10,
      瀬戸内: 11,
      室戸: 12,
      稲積水中鍾乳洞: 13,
      慶良間: 14
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
