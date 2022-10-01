=begin
Cute angles
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees 
and returns a String that represents that angle in degrees, minutes and seconds. 
You should use a degree symbol (°) to represent degrees, 
a single quote (') to represent minutes, 
and a double quote (") to represent seconds. 
A degree has 60 minutes, 
while a minute has 60 seconds.

PROBLEM
inputs: float in 0..360
outputs: string of 3 parts (degree, min, sec)
requiremetns: must use the given symbols, must convert from decimal to base 60
quations: mutate?

DATA
float 36.0
string degreees
string minutes
string seconds

AGLO
divide float by 1 set minutes to remainder
divide minutes by 1 set seconds to remainder
multiply seconds by 60 

PSEUDO
degrees, minutes = float.divmod(1)
minutes, seconds = (minutes * 60).divmod(1)
seconds = (seconds * 60).round

=end

require "pry"

SECONDS_IN_MIN = 60
MIN_IN_DEGREE = 60
DEGREE = "\xC2\xB0"


def dms(float)
  degrees, minutes = float.divmod(1)
  minutes, seconds = (minutes * MIN_IN_DEGREE).divmod(1)
  seconds = (seconds * SECONDS_IN_MIN).round

  minutes += 1 if seconds == 60
  seconds = 0 if seconds == 60

  format(%(#{degrees}\xC2\xB0%02d'%02d"), minutes, seconds)
end



p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")