class Site::SendMailController < SiteController

def new
  respond_to do |format|
    format.js
  end
end

def create
  ContactMailer.send_message(params[:'sender-name'],
                                               params[:'subject-name'],
                                               params[:'message-text']).deliver_now

  respond_to do |format|
    format.js
  end
end

end
