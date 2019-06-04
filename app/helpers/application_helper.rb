module ApplicationHelper
    def display_rental(garage, day)
        if @rentals.has_rental(garage, day).count > 0
            first_name = @rentals.has_rental(garage, day).first.user.first_name
            last_name = @rentals.has_rental(garage, day).first.user.last_name.chars.first 
            html = "<tr> <td><strong>#{day[0..2]}:</strong> #{first_name} #{last_name}."
            return html.html_safe
        else 
            "<tr> <td><strong>#{day[0..2]}:</strong>".html_safe
        end
    end

end
