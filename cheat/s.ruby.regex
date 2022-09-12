    match_data = /(?<area_code>\d{3})-(?<prefix>\d{3})-(?<line_number>\d{4})/.match("678-248-2440")

    if match_data
      PhoneNumber.new(
        area_code:    match_data[:area_code],
        prefix:       match_data[:prefix],
        line_number:  match_data[:line_number])
    end
