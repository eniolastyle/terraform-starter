resource "spacelift_policy" "access_new" {
  type = "ACCESS"

  name = "All of Engineering gets read access UPDATED"
  body = file("${path.module}/policies/access.rego")
}

resource "spacelift_policy" "plan_new" {
  type = "PLAN"

  name = "Enforce password strength UPDATED"
  body = file("${path.module}/policies/plan.rego")
}

resource "spacelift_policy" "push_new" {
  type = "GIT_PUSH"

  name = "Ignore commits outside the project root UPDATED"
  body = file("${path.module}/policies/push.rego")
}

resource "spacelift_policy" "trigger" {
  type = "TRIGGER"

  name = "Trigger stacks that declare an explicit dependency UPDATED"
  body = file("${path.module}/policies/trigger.rego")
}

resource "spacelift_policy" "login" {
  type = "LOGIN"

  name = "DevOps are admins UPDATED"
  body = file("${path.module}/policies/login.rego")
}
