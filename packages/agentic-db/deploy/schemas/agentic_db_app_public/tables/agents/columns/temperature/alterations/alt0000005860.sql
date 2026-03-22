-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/temperature/alterations/alt0000005860
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/temperature/column
-- requires: schemas/agentic_db_app_public/tables/agents/columns/model/alterations/alt0000005859



ALTER TABLE agentic_db_app_public.agents 
    ALTER COLUMN temperature SET DEFAULT 0.7;

