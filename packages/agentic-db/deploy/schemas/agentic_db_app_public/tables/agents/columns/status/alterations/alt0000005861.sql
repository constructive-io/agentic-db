-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/status/alterations/alt0000005861
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/agents/columns/temperature/alterations/alt0000005860



ALTER TABLE agentic_db_app_public.agents 
    ALTER COLUMN status SET DEFAULT 'active';

