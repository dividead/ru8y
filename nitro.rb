require 'mechanize'

agent = Mechanize.new
ten_minute_mail = 'http://10minutemail.com/10MinuteMail/index.html'
nitrous = agent.get('https://www.nitrous.io/join/EvDzuewTkyM?utm_source=nitrous.io&utm_medium=copypaste&utm_campaign=referral')
mail = agent.get(ten_minute_mail) 
email = mail.search(".//div[@id='leftpart']").first.text.split("\n")[3].split.first #eew
login = email.split('@').first
form = nitrous.form_with(:id => 'new_user')
form['user[username]'] = login
form['user[email]'] = email
form['user[password]'] = login#.capitalize # D:
button = form.button_with(:value => "Sign Up")
agent.submit(form, button)
sleep(60) #wait for letter
mail = agent.get(ten_minute_mail) #refresh?
(conf_link = mail.links_with(:href => /dataModelSelection=message/).first).click
#<td><a href="/10MinuteMail/index.html?dataModelSelection=message%3Aemails%5B0%5D&amp;actionMethod=index.xhtml%3AmailQueue.select" id="emailTable:0:j_id37">Confirm your email to start using Nitrous.IO</a></td>
agent.get(conf_link.uri.to_s).links_with(:href => /email.nitrous.io/).first.click
p "done"
#click confirmation <a href="http://email.nitrous.io/wf/click?upn=WX0HgDncyrvh4ctl8jO6mT59kBiZj1qdzoYMqkcDN0XvcKFjzxDACGeS4eoByiDAfP87a-2F25ibeXVHne64v7G-2FOg5WqhlDXKhCsbhJkZ8sN72Urvtr5bCiZTAnBCQGFI_LMREcCBnsKhrRwEjNmeYo30kXzrd14gqVoMKkypJUmJfvlSR7-2F3-2FXfP5U8W2CwJr-2FnsO4KK0pCDHeAknq432iT4PbfWF5mOr3USQRJ7wlUtUvcl76o4jtLbb1m-2FwToUWNlkPZZLQrGtr7dmqLk6xYHeL6a3xb-2B7ob436ZrEdxVfQrWIIPGscP6z6eUrqPrKCgWQ9u6ddH2OzGaigZiCU3A-3D-3D">https://www.nitrous.io/users/confirmation?confirmation_token=qyBpyPUy7feu5EAfF6fv</a>