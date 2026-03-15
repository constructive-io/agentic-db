-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/content/alterations/alt0000004275
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/content/column
-- requires: schemas/agent_db_app_public/tables/prompts/columns/name/alterations/alt0000004274


ALTER TABLE "agent_db_app_public".prompts 
  ALTER COLUMN content SET NOT NULL;

