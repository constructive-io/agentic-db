-- Deploy: schemas/agent_db_app_public/tables/events/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/tags/column


ALTER TABLE "agent_db_app_public".events 
  ADD COLUMN embedding vector(768);

