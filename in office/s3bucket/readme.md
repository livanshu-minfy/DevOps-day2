# this is the readme file of terraform s3 bucket

## In this readme file I have attached screenshots and explained the step along with each screenshot. 
The code is written in s3bucket/main.tf file.

first i have done **terraform init** and output is displayed below
![image](https://github.com/user-attachments/assets/664aaeaa-ab8d-4912-9fdb-a86fbee0c9ed)


after this I have done **terraform plan**

![image](https://github.com/user-attachments/assets/5d02fe65-3670-405e-b3e5-a66b77bde682)
![image](https://github.com/user-attachments/assets/3f3b0119-fb2f-47d5-9881-d5f6ef76f1e2)

"Plan: 1 to add, 0 to change, 0 to destroy." was displayed in the output of the terraform plan

The next step is **terraform apply**. This step will initiate the process of s3 bucket creation and it can be seen in aws console.

![image](https://github.com/user-attachments/assets/15c728b3-f37d-433b-b3b0-04ce17cef6fb)
![image](https://github.com/user-attachments/assets/380dd666-b2c5-449e-a324-466f589111e5)

below is the screenshot of AWS console - a s3 bucket with "minfy-training-livanshu-s3-1234" can be seen.

![image](https://github.com/user-attachments/assets/ac03bff0-a6fa-4053-9f7d-7bd9b3039a7b)

and the last and final step is **terraform destroy**. This will delete s3 bucket.

![image](https://github.com/user-attachments/assets/8b514688-3ae7-4d01-acaa-33c523a58c36)

![image](https://github.com/user-attachments/assets/e3f89169-dc31-4e4c-a221-00d29706367c)

above is the screenshot of successful deleteion of s3 bucket.
