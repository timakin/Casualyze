ActiveAdmin.register AdminUser do
  permit_params :utf8, :_method, :authenticity_token, :commit, :id, model: [:category, :board]
  controller do
    def permitted_params
      params.permit admin_user: [:email, :password, :password_confirmation], :category => [:name]
    end
  end

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
