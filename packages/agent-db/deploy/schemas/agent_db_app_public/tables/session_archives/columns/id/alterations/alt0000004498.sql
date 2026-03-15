-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/id/alterations/alt0000004498
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/id/column
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/strength/column


ALTER TABLE "agent_db_app_public".session_archives 
  ALTER COLUMN id SET NOT NULL;

