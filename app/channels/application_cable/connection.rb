module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # identified_by :current_user
    #
    # def connect
    #   self.current_user = find_verified_user
    # end
    #
    # private
    #
    # def find_verified_user
    #   cookie = cookies.signed['user.id']
    #   if current_user = User.find_by(id: cookie)
    #     current_user
    #   else
    #     reject_unauthorized_connection
    #   end
    # end
  end
end
