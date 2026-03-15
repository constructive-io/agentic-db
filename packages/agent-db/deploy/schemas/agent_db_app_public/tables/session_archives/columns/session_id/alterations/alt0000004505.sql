-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/session_id/alterations/alt0000004505
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/session_id/column
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/updated_at/alterations/alt0000004504


ALTER TABLE "agent_db_app_public".session_archives 
  ALTER COLUMN session_id SET NOT NULL;

