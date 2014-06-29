ActiveAdmin.register Category do  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, boards_attributes: [:id, :board_name, :_destroy]
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  form do |f|
    f.inputs :name
    f.inputs do
      f.has_many :boards, heading: 'Board', allow_destroy: true, new_record: true do |a|
        a.input :board_name        
      end
    end
    f.actions
  end

end
