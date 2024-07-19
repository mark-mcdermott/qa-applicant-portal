# frozen_string_literal: true

Role.create(name: "user", create_user: false, create_applicant: false, create_teammate: false, create_admin: false, access_portal: false, own_upload: false, all_uploads: false, edit_assignment: false, edit_review: false )
Role.create(name: "applicant", create_user: false, create_applicant: false, create_teammate: false, create_admin: false, access_portal: true, own_upload: true, all_uploads: false, edit_assignment: false, edit_review: false )
Role.create(name: "teammate", create_user: true, create_applicant: true, create_teammate: false, create_admin: false, access_portal: true, own_upload: true, all_uploads: true, edit_assignment: true, edit_review: true )
Role.create(name: "admin", create_user: true, create_applicant: true, create_teammate: true, create_admin: true, access_portal: true, own_upload: true, all_uploads: true, edit_assignment: true, edit_review: true )

User.create(email: "applicant@test.com", password: "password", role: Role.find_by(name: "applicant"))