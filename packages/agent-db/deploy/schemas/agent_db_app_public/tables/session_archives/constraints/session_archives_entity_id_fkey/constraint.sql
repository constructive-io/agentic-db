-- Deploy: schemas/agent_db_app_public/tables/session_archives/constraints/session_archives_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/strength/column


ALTER TABLE "agent_db_app_public".session_archives 
  ADD CONSTRAINT session_archives_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

