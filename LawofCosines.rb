class Numeric
#Here is where the conversion to radians from degrees
  def to_rad
    self * Math::PI / 180.0
  end
end
class Numeric
	def to_deg
	  self * 180.0 / Math::PI 
	end
end


def law_sine
	puts "Do you know: 3 sides (A), 
OR
1 Angle and the Sides create it (B), 
OR 
1 Angle and 1 Side that creates it and the Side opposite the Angle (C)?"
	angle = gets.chomp
	case angle.downcase
		when 'a'
			puts "Input Side A:"
			sideA = gets.chomp.to_f
			puts "Input Side B:"
			sideB = gets.chomp.to_f
			puts "Input Side C"
			sideC = gets.chomp.to_f
			angleA = Math.acos((sideB**2+sideC**2-sideA**2)/(2*sideB*sideC))
			angleB = Math.acos((sideA**2+sideC**2-sideB**2)/(2*sideA*sideC))
			angleC = Math.acos((sideA**2+sideB**2-sideC**2)/(2*sideA*sideB))
			puts ""
			puts "Angle A Radians:"
			puts angleA.round(3)
			puts "Angle A Degrees:"
			puts angleA.to_deg.round(3)
			puts ""
			puts "Angle B Radians:"
			puts angleB.round(3)
			puts "Angle B Degrees:"
			puts angleB.to_deg.round(3)
			puts ""
			puts "Angle C Radians:"
			puts angleC.round(3)
			puts "Angle C Degrees:"
			puts angleC.to_deg.round(3)
			puts ""
		when 'b'
			puts "Input Side A"
			sideA = gets.chomp.to_f
			puts "Input Side B"
			sideB = gets.chomp.to_f
			puts "Input Angle C (Between Sides A & B)"
			angleC = gets.chomp.to_f
			angleCdeg = angleC.to_rad
			sideC = Math.sqrt(sideA**2+sideB**2-2*sideA*sideB*Math.cos(angleC))
			sideCdeg = Math.sqrt(sideA**2+sideB**2-2*sideA*sideB*Math.cos(angleCdeg))
			puts "Side C if angle was in radians"
			puts sideC.round(3)
			puts ""
			puts "Side C if angle was in degrees"
			puts sideCdeg.round(3)
			puts ""
		when 'c'
			puts "Input Side A (1 part of the angle)"
			sideA = gets.chomp.to_f
			puts "Input Side C (Side opposite the angle"
			sideC = gets.chomp.to_f
			puts "Input Angle C (Angle that is created partly by Side A and is opposite Side C)"
			angleC = gets.chomp.to_f
			angleCdeg = angleC.to_rad
			sideB = sideA*Math.cos(angleC)+Math.sqrt(sideC**2-sideA**2*(Math.sin(angleC))**2)
			sideBdeg = sideA*Math.cos(angleCdeg)+Math.sqrt(sideC**2-sideA**2*(Math.sin(angleCdeg))**2)
			puts "Side B if angle was in radians"
			puts sideB.round(3)
			puts ""
			puts "Side B if angle was in degrees"
			puts sideBdeg.round(3)
			puts ""
		#Original by: Matt Greenapple
		#Completely Redone and revised Braeden Smith
		#Everything is functional now
		#Note: The method is not a real method due to the original set up, as well as the 3 possible choices
		else
			puts "Please enter A or B or C"
		end
end
puts law_sine
