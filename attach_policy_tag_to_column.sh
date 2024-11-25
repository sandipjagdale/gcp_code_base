
#run below bq commands on command-line or cloud sdk


#1. First extract table schema and save to local directory
bq show --schema --format=prettyjson project-id:dataset.customer_data > schema.json

#2 Modify the schema.json file to add policy tag as below
#update the highlighted string with your actual policy tag id for dtiving_licence that you can copy from console or list using python script

[
 ...
 {
   "name": "customer_driving_licence",
   "type": "STRING",
   "mode": "REQUIRED",
   "policyTags": {
     "names": ["projects/project-id/locations/location/taxonomies/taxonomy-id/policyTags/policytag-id"]
   }
 },
 ...
]

#3 update the schema
bq update project-id:dataset.customer_data schema.json



