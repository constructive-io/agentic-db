-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/updated_at/alterations/alt0000002760


ALTER TABLE "agent_db_app_public".sessions 
  ADD COLUMN title text;

