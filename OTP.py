mport pyotp

otp_client = pyotp.parse_uri("otpauth://totp/KIT:rd2963%40kit.edu%20TOTP000189C6?secret=2KFVL7FYHUHTSTZRJNRXILLB45HU6RW7&period=30&is
suer=KIT")

print(otp_client.now())
