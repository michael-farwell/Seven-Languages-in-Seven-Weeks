a = []
(1..16).each { |i| a.push(i) }

a.each { |i| }

a.each_slice(4) { |i| p i }
