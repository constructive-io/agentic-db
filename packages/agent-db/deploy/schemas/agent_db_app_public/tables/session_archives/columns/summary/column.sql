-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/summary/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/archive_index/alterations/alt0000004458


ALTER TABLE "agent_db_app_public".session_archives 
  ADD COLUMN summary text;

