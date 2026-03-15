-- Deploy: schemas/agent_db_app_public/tables/skills/columns/abstract/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/is_active/alterations/alt0000004253


ALTER TABLE "agent_db_app_public".skills 
  ADD COLUMN abstract text;

