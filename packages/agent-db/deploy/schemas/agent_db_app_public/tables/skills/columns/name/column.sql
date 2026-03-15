-- Deploy: schemas/agent_db_app_public/tables/skills/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/updated_at/alterations/alt0000004298


ALTER TABLE "agent_db_app_public".skills 
  ADD COLUMN name text;

