h = { "a" => 100, "b" => 200 }
h.each_key {|key| puts key}


in controller
Movie.where("rating IN (?)", params[:ratings])
Movie.find(:all, conditions: ["rating IN (?)", params[:ratings]])
