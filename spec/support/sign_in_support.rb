module SignInSupport
  def sign_in(user)
    visit root_path
    fill_in 'user_email', with: user.user_email
    fill_in 'user_password', with: user.user_password
    click_on("Lod in")
    expect(current_path).to eq root_path
  end
end 