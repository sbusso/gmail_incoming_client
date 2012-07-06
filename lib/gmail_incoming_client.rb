require "gmail_incoming_client/version"

module GmailIncomingClient
  def self.check(user, password, box = :bounced, url = "http://localhost:9292/")
    sess = Patron::Session.new
    sess.base_url = url
    response = sess.post("/check/#{box.to_s}", {user: user, password: password}, {"Content-Type" => "text/plain"})
    response.status == 200 ? JSON.parse(response.body) : nil
  end
end
