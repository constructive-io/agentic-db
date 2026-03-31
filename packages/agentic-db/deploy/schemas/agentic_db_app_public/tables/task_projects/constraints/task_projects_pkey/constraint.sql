-- Deploy: schemas/agentic_db_app_public/tables/task_projects/constraints/task_projects_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_projects/table
-- requires: schemas/agentic_db_app_public/tables/task_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".task_projects 
  ADD CONSTRAINT task_projects_pkey PRIMARY KEY (id);

