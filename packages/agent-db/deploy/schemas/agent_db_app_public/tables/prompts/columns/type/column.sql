-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/content/alterations/alt0000004323


ALTER TABLE "agent_db_app_public".prompts 
  ADD COLUMN type text;

