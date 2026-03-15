-- Deploy: schemas/agent_db_app_public/tables/tools/constraints/tools_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agent_db_app_public".tools 
  ADD CONSTRAINT tools_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

