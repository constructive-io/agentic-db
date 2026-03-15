-- Deploy: schemas/agent_db_app_public/tables/notes/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/tags/column


ALTER TABLE "agent_db_app_public".notes 
  ADD COLUMN embedding vector(768);

