module "course_governance" {
  source = "./course-governance"

  ibmcloud_api_key  = var.ibmcloud_api_key
  user_list         = var.user_list
  create_vsi        = var.create_vsi
  image             = var.image
  profile           = var.profile
}

