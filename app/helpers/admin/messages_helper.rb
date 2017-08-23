module Admin::MessagesHelper
  def message_weight message
    message.status == false ? 'font-weight:bold' :  'font-weight:normal'
  end

  def if_message_read message
      if message.status == true
       link_to 'Un-read', admin_message_path(message, status: false),method: :put
     else
       link_to 'Read', admin_message_path(message, status: true),method: :put
     end
  end
end
