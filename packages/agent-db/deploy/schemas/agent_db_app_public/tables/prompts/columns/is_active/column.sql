-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/is_active/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/version/alterations/alt0000004324


ALTER TABLE "agent_db_app_public".prompts 
  ADD COLUMN is_active bool;

