-- Deploy: schemas/agent_db_app_public/tables/images/constraints/images_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agent_db_app_public".images 
  ADD CONSTRAINT images_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

