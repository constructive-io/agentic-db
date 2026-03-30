-- Deploy: schemas/agentic_db_app_public/tables/task_projects/constraints/task_projects_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/task_projects/table
-- requires: schemas/agentic_db_app_public/tables/task_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".task_projects 
  ADD CONSTRAINT task_projects_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

