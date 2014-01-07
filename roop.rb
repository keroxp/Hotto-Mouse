require 'arduino_firmata'

arduino = ArduinoFirmata.connect ENV["ARDUINO"]
puts "Arduino connect!! (firmata version v#{arduino.version})"
i = 0

loop do
  # 正弦波で温度差を分ける
  sin = Math.sin(i*Math::PI/180.0)
  p sin
  hot = sin >=0 ? false : true
  arduino.digital_write 5, hot
  arduino.digital_write 4, !hot
  arduino.analog_write 3, (255 * sin).abs.floor.to_i
  sleep 0.1
  i += 1
end