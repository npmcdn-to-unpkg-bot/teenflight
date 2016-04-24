ActiveAdmin.register User do 

  permit_params :email, :id, :password, :password_confirmation, :school_admin, :school_teacher, :admin, :banned, :time_zone

  csv do
    column :id
    column :email
    column :first_name
    column :last_name
  end

  controller do
    def delete_user
      @deleted_user = User.find(params[:id])
      @deleted_user.destroy
    end
  end



  index do
    selectable_column
    id_column
    column :email
    column :name
    column :sign_in_count
    column :admin
    actions
  end



  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :name

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :admin
    end
    f.actions
  end

end
