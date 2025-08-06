GCP TERRAFORM RESOURCE PROVISIONING

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


CREATE A SECRET FOR GCP SA ON GITHUB 
   - Go to "Settings" 
   - Scroll down to "Secrets and Variables"
   - Click "Actions"
   - Click "New Repository Secret"
   - give a name as "GCP_SA_KEY"
   - Copy your key.json from GCP service account to this window
   - Click "Add Secret"

CONFIGURING GITHUB ACTIONS FOR CI/CD
1) Navigate to actions page in the repository
2) Click Terraform
3) Click commit the changes
4) After this ./github/workflow/terraform.yml will be created in the repo
5) Edit the terraform.yanl for github hosted runner
6) Edit terraform.yaml to use this secret
7) Push repository new changes 
8) Observe the github workflow that runs the job

<img width="1891" height="838" alt="workflow" src="https://github.com/user-attachments/assets/715c0503-3530-45eb-9964-8902485be173" />

