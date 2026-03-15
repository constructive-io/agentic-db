-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/is_active/alterations/alt0000004277
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/is_active/column
-- requires: schemas/agent_db_app_public/tables/prompts/columns/version/alterations/alt0000004276



ALTER TABLE "agent_db_app_public".prompts 
    ALTER COLUMN is_active SET DEFAULT true;

