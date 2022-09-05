def ip_address?(ip_string)
  bytes = ip_string.split()

  bytes.each do |byte|
    return false if !is_an_ip_number?(byte)
  end

  true
end

ip = "10.1.1.23"