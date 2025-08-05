GCP Terraform resource proivisioning

1) create the folder structure of the project
2) configure provider.tf file GCP
3) Create a Service Account for terraform in IAM section
4) Give required permissions to this newly created SA. In our case we want't to create a storage bucket. "Storage Admin" role is attached to SA of terraform.
5) Download the key.json. Configure it in your file structure. WARINING: DON NOT COMMIT THIS TO REPOSITORY.  
5) create a main.tf file that provisons the resource(check terraform documentation for bucket in this case)
6) Commands for terraform:
                      terraform init
                      terraform plan 
                      terraform apply
          <img width="1397" height="906" alt="terrraform-apply" src="https://github.com/user-attachments/assets/8ccb176f-ab0e-4bac-90a2-05db74667381" />

7) Check the GCP Console if the bucket created.

   <img width="1913" height="897" alt="bucket-creates" src="https://github.com/user-attachments/assets/5242ae3c-c82c-4285-8dba-567cabf5cee7" />
