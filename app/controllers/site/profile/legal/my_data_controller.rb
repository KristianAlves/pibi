class Site::Profile::Legal::MyDataController < Site::ProfileController
  before_action :set_profile_member, only: [:edit, :update]

  def edit
  end

  def update
    if @profile_member.update(params_profile_member)
      redirect_to edit_site_profile_legal_my_datum_path(current_member.id), notice: "Data successfully updated!"
    else
      render :edit
    end
  end

  private

  def set_profile_member
    @profile_member = ProfileMember.find_or_create_by(member_id: current_member.id)
  end

  def params_profile_member
    params.require(:profile_member).permit(:id, :company_name, :fantasy_name, :street, :city, :cnpj, :phone)
  end

end
