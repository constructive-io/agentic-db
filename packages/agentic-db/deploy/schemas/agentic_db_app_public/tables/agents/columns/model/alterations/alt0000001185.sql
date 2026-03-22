-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/model/alterations/alt0000001185
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/model/column
-- requires: schemas/agentic_db_app_public/tables/agents/columns/system_prompt/column



ALTER TABLE "agentic_db_app_public".agents 
    ALTER COLUMN model SET DEFAULT 'gpt-4';

