resource "oci_data_safe_security_assessment" "data_safe_security_assessments" {
  for_each = var.data_safe_security_assessments

  compartment_id                       = each.value.compartment_id
  apply_template_trigger               = each.value.apply_template_trigger
  base_security_assessment_id          = each.value.base_security_assessment_id
  compare_to_template_baseline_trigger = each.value.compare_to_template_baseline_trigger
  defined_tags                         = each.value.defined_tags
  description                          = each.value.description
  display_name                         = each.value.display_name
  freeform_tags                        = each.value.freeform_tags
  is_assessment_scheduled              = each.value.is_assessment_scheduled
  remove_template_trigger              = each.value.remove_template_trigger
  schedule                             = each.value.schedule
  target_id                            = each.value.target_id
  target_type                          = each.value.target_type
  template_assessment_id               = each.value.template_assessment_id
  type                                 = each.value.type

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

