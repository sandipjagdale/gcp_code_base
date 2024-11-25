#setting permission for user to be able to read data in column with policy tag
gcloud data-catalog taxonomies add-iam-policy-binding \
    projects/$yourproject/locations/$location/taxonomies/$taxonomyid/policyTags/$policyTagsid \
    --member=user:<user-email-address> \
    --role=roles/datacatalog.categoryFineGrainedReader 

#Revoke permissions
gcloud data-catalog taxonomies remove-iam-policy-binding \
    projects/$yourproject/locations/$location/taxonomies/$taxonomyid/policyTags/$policyTagsid \
    --member=user:<user-email-address> \
    --role=roles/datacatalog.categoryFineGrainedReader 

