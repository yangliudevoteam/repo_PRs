groups = {

}

service_accounts = {

}


projects = {
  "asdf" = {
    project_id = "asdf-444412"
    sa         = {}
    users      = {}
    groups     = {}
  }
  "pj-sn-tf-root" = {
    project_id = "pj-sn-tf-root"
    sa         = {}
    users = {
      "alexandros.kyrloglou@devoteam.com" = [
        "roles/bigquery.dataEditor",
        "roles/newrole",
        "roles/secondnewrole"
      ]
      "khachatur.papikyan@devoteam.com" = [
        "roles/bigquery.dataEditor",
        "roles/bigquery.admin"
      ],
      "yang.liu@devoteam.com" = [
        "projects/pj-sn-tf-root/roles/role.fifth"
      ]
    }
    principalSets = { // TODO: move to org IAM for SN
      "//iam.googleapis.com/projects/1017984719464/locations/global/workloadIdentityPools/wlpool-githubiam/attribute.github_folder/devoteamgcloud/springer-nature-iam-management/base" = [
        "roles/iam.roleAdmin"
      ]
    }
    groups = {}


  }
}

folders = {
  "fo-sn-iam-test" = {
    folder_id = "880643029903"
    sa = {
      # "example" = [
      #   "roles/iam.securityAdmin",
      #   "roles/iam.serviceAccountAdmin",
      #   "roles/serviceusage.serviceUsageConsumer",
      #   "roles/storage.admin"
      # ]
    }
    users = {
      "alexandros.kyrloglou@devoteam.com" = [
        "roles/iam.securityAdmin",
        "roles/owner",
        "roles/resourcemanager.projectCreator",
        "roles/resourcemanager.folderCreator"
      ]
      "khachatur.papikyan@devoteam.com" = [
        "roles/iam.securityAdmin",
        "roles/owner",
        "roles/resourcemanager.projectCreator",
        "roles/resourcemanager.folderCreator"
      ]
      "yang.liu@devoteam.com" = [
        "roles/iam.securityAdmin",
        "roles/owner",
        "roles/resourcemanager.projectCreator",
        "roles/resourcemanager.folderCreator"
      ]
    }
    principalSets = { // TODO: move to org IAM for SN
      "//iam.googleapis.com/projects/1017984719464/locations/global/workloadIdentityPools/wlpool-githubiam/attribute.github_folder/devoteamgcloud/springer-nature-iam-management/base" = [
        "roles/iam.securityAdmin",
        "roles/resourcemanager.folderIamAdmin",
        "roles/resourcemanager.projectIamAdmin",
        "roles/iam.serviceAccountAdmin",
        "roles/serviceusage.serviceUsageConsumer",
        "roles/resourcemanager.folderAdmin",

        "roles/newrole_from_branch1"
        "roles/newrole"

      ]
    }
    groups = {}
  }

}

tfstates = {
}

custom_project_roles = {
  "role.fifth" = {
  project_ids = ["pj-sn-tf-root"]
  title       = "fourth custom role for testing"

  description = "GKE service account Firewall permissions for shared vpcs"

  permissions = [
    "compute.networks.updatePolicy"
  ]

  }
}