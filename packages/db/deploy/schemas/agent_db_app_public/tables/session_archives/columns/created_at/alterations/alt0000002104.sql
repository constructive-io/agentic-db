-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/created_at/alterations/alt0000002104
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/session_archives/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".session_archives 
  ALTER COLUMN created_at SET NOT NULL;

