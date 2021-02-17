require './test/test_helper'

class UserTest < ActiveSupport::TestCase
    
  fixtures :users
  def test_create_user
    mock_user = User.new :first_name => users(:user).first_name,
                          :last_name  => users(:user).last_name,
                          :email  => users(:user).email,
                          :password => users(:user).password
end

  def test_save_user
    mock_user = test_create_user
    assert mock_user.save
  end

  def test_find_user
    # Create user
    mock_user = test_create_user
    # Save user  
    mock_user.save
    # Find user inside User
    user_finded = User.find(mock_user.id)

    # Verify if user_finded is equal to mock_user
    assert_equal mock_user, user_finded
  end

  def test_destroy_user
    # Create user
    mock_user = test_create_user
    # Save user.
    mock_user.save
    # Destroy user.
    assert mock_user.destroy
  end
end
