-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".session_archives 
  ADD COLUMN embedding vector(768);

