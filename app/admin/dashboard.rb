ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    
    columns do
      column do
        panel "Number of Users joined in last 24 hours" do 
          table do 
            tr do 
              User.where('created_at > ?', 24.hours.ago).count 
            end
          end
        end
        panel "Users joined in last 24 hours" do
          table do
            tr do 
              td "ID"
              td "Name"
              td "Email"
              td "Created At"
            end
            User.where('created_at > ?', 24.hours.ago).map do |user|
              tr do 
                td user.id
                td user.name
                td user.email
                td user.created_at
              end
            end
          end
        end
      end

      column do
        panel "Total users" do
          table do
            tr do 
              td "Total number of users"
            end
            tr do 
              td User.all.count
            end
          end
        end
      end

      # column do
      #   panel "Info" do
      #     para "Welcome to ActiveAdmin."
      #   end
      # end
    end
  end # content

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  # end # content

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  # end # content
end
