-- Deploy: schemas/agent_db_app_public/tables/threads/columns/summary/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/title/alterations/alt0000004398


ALTER TABLE "agent_db_app_public".threads 
  ADD COLUMN summary text;

