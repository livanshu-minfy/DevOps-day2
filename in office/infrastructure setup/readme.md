# this is the readme file of complete terraform infrastructure setup

## In this readme file I have attached screenshots and explained the step along with each screenshot.
all the infrastructure code is written in inftrastructure_setup/ main.tf.

all the required outputs are written in inftrastructure_setup/ outputs.tf.

all the variables are written in inftrastructure_setup/ variables.tf.

In all the resources I have included my name eg - day_two_livanshu_subnet, day_two_livanshu_igw, etc which can also be seen in the terraform apply and destroy screenshot.


first i have done **terraform init** and output is displayed below
![image](https://github.com/user-attachments/assets/5e96e6ac-2fb5-4f3c-b130-4dea863df6f5)


after this I have done **terraform plan**

![image](https://github.com/user-attachments/assets/91eaba92-0809-423c-ac22-357662f3d85a)

![image](https://github.com/user-attachments/assets/e16ad3b4-7a65-4cc1-baa3-385e08643481)


"Plan: 7 to add, 0 to change, 0 to destroy." was displayed in the output of the terraform plan and the output i.e instance_private_ip and instance_public_ip are also confirmed

The next step is **terraform apply**. This step will initiate the process of complete infrastructure creation and it can be seen in aws console.

![image](https://github.com/user-attachments/assets/4f19346f-6ad9-4419-8219-b6212ed66f4b)

![image](https://github.com/user-attachments/assets/03a82663-072e-45d4-a31f-d09cdeb25f97)

below is the screenshot of accessing public ip in http.

![image](https://github.com/user-attachments/assets/818f4fbc-17eb-4ad1-a24f-b9677d99b587)


and the last and final step is **terraform destroy**. This will delete all the resources that we have created.

![image](https://github.com/user-attachments/assets/8ed94ad7-4934-4c77-8c89-d134b203f34c)

![image](https://github.com/user-attachments/assets/350f01fd-7903-476a-8d2e-1728b0b9a93a)

above is the screenshot of successful deleteion of complete infrastructure.
