
#run below bq commands on command-line or cloud sdk


#1. First extract table schema and save to local directory
bq show --schema --format=prettyjson project-id:dataset.customer_data > schema.json

#2 Modify the schema.json file to add policy tag as below
#update the highlighted string with your actual policy tag id for dtiving_licence 
#that you can copy from console or list using python script
#Checkout schema.json file for updated example

[
 ...
{
        "mode": "NULLABLE",
        "name": "customer_driving_license",
        "policyTags": {
          "names": [
            "projects/yourproject/locations/us/taxonomies/12345678906245/policyTags/1234567894755"
          ]
        },
        "type": "STRING"
 },
 ...
]

#3 update the schema
bq update project-id:dataset.customer_data schema.json



