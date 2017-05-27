module UsersHelper
    
    def job_title_icon
        if @user.profile.job_title == "Physician"
            "<i class='fa fa-thermometer'></i>".html_safe
        elsif @user.profile.job_title == "Marketing"
            "<i class='fa fa-industry'></i>".html_safe
         elsif @user.profile.job_title == "Research and Development"
            "<i class='fa fa-flask'></i>".html_safe
        end
            
    end
end