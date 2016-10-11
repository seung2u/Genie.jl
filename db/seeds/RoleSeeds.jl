module RoleSeeds
using Genie, SearchLight

function default_roles()
  for i in [:user, :admin, :editor, :blogger]
    role = Role()
    role.name = i

    SearchLight.save!!(role)
  end
end

end