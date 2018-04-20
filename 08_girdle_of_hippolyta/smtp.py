import smtplib
import getpass

user = input('email: ')
pswd = getpass.getpass('password: ')
recv = input('receiver: ')

message = """Subject: SMTP e-mail
This is a message.
"""

try:
    smtp = smtplib.SMTP('smtp.gmail.com', 587)
    smtp.starttls()
    smtp.login(user, pswd);
    smtp.sendmail(user, recv, message)
    smtp.quit()
    print ("Successfully sent email")
except smtplib.SMTPException as e:
    print (e)
