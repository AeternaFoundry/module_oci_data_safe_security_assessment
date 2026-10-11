variable "data_safe_security_assessments" {
  description = <<EOT
Map of data_safe_security_assessments, attributes below
Required:
    - compartment_id
Optional:
    - apply_template_trigger
    - base_security_assessment_id
    - compare_to_template_baseline_trigger
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - is_assessment_scheduled
    - remove_template_trigger
    - schedule
    - target_id
    - target_type
    - template_assessment_id
    - type
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                       = string
    apply_template_trigger               = optional(number)
    base_security_assessment_id          = optional(string)
    compare_to_template_baseline_trigger = optional(number)
    defined_tags                         = optional(map(string))
    description                          = optional(string)
    display_name                         = optional(string)
    freeform_tags                        = optional(map(string))
    is_assessment_scheduled              = optional(bool)
    remove_template_trigger              = optional(number)
    schedule                             = optional(string)
    target_id                            = optional(string)
    target_type                          = optional(string)
    template_assessment_id               = optional(string)
    type                                 = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

