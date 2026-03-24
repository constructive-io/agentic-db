-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/constraints/task_contacts_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.task_contacts 
  ADD CONSTRAINT task_contacts_pkey PRIMARY KEY (id);

