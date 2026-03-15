-- Deploy: schemas/agent_db_app_public/tables/session_archives/constraints/session_archives_session_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/agent_tools/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".session_archives 
  ADD CONSTRAINT session_archives_session_id_fkey 
    FOREIGN KEY(session_id) 
    REFERENCES "agent_db_app_public".sessions (id) 
    ON DELETE CASCADE;

