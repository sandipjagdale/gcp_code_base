# Readme to follow the steps

This branch provide you basic steps to create taxonomy in you GCP project, create policy tags in with 2 level hierarchy.
And then attach a policy tag to a table column.

We will create a PII data taxonomy that categorizes sensitive information by severity. Each category will have sub-categories for specific policy tags to be applied to table columns. Refer a diagram below:

![Policy tags](https://github.com/user-attachments/assets/3f6eea91-6152-4fda-be2a-cbb988e4d4c5)

Pre-requiresites:
1. Create a table customer_data with 3 fields as below
   customer_id int64
   customer_name string
   customer_driving_licence string  -- This is the field we will apply policy tag to

Follow below steps:
1. Execute create_taxonomy.ipynb jupyter notebook as steps mentioned
2. After executing the code you should see a taxonomy and policy tag structure as below:
  ![taxonomy](https://github.com/user-attachments/assets/84d7a0e3-6bff-4167-9968-729b54156311)
 
4. Then repeat the same process to create medium and low category, and sub-tag for all required tags.
5. download schema.json file in your local directory
6. Next execute the attach_policy_tag_to_column.sh using schema.json
7. this will attach a policy tag to a table column as below
![columns wih policy tag](https://github.com/user-attachments/assets/9a5f7548-fb96-49eb-b47f-e81b08d3516b)

