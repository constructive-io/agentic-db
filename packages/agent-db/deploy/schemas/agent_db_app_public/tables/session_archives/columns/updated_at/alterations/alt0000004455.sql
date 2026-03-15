-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/updated_at/alterations/alt0000004455
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/session_archives/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".session_archives 
  ALTER COLUMN updated_at SET NOT NULL;

