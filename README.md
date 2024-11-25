# Readme to follow the steps

This branch provide you basic steps to create taxonomy in you GCP project, create policy tags in with 2 level hierarchy.
And then attach a policy tag to a table column.

Pre-requiresites:
1. Create a table customer_data with 3 fields as below
   customer_id int64
   customer_name string
   customer_driving_licence string  -- This is the field we will apply policy tag to

Follow below steps:
1. Execute create_taxonomy.ipynb jupyter notebook as steps mentioned
2. After executing the code you should see a taxonomy and policy tag structure as 
3. Then repeat the same process to create category and sub-tag for all required tags.
4. download schema.json file in your local directory
5. Next execute the attach_policy_tag_to_column.sh using schema.json
6. this will attach a policy tag to a table column
