ActiveAdmin.register User do
  # This determines which attributes of the User model will be
  # displayed in the index page. I have left only matricula, but
  # feel free to uncomment the rest of the fields or add any
  # other of the User attributes.
  index do
    column :matricula
    # column :current_sign_in_at
    # column :last_sign_in_at
    # column :sign_in_count
    actions
  end

  # Default is :email, but we need to replace this with :matricula
  filter :matricula

  # This is the form for creating a new user using the Admin
  # backend. If you have added additional attributes to the
  # User model, you need to include them here.
  form do |f|
    f.inputs "User Details" do
      f.input :matricula
      f.input :name
      f.input :last_name
      f.input :isProfessor
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  # This is related to Rails 4 and how it handles strong parameters.
  # Here we replace :email with :matricula.
  controller do
    def permitted_params
      params.permit user: [:matricula, :name, :last_name, :isProfessor, :password, :password_confirmation]
    end
  end
end