-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/version/alterations/alt0000001949
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/model/column
-- requires: schemas/agent_db_app_public/tables/prompts/columns/version/column



ALTER TABLE "agent_db_app_public".prompts 
    ALTER COLUMN version SET DEFAULT 1;

