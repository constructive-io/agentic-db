-- Deploy: schemas/agent_db_app_public/tables/ideas/constraints/ideas_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


ALTER TABLE "agent_db_app_public".ideas 
  ADD CONSTRAINT ideas_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

