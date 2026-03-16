-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/status/alterations/alt0000001118
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/config/column
-- requires: schemas/agentic_db_app_public/tables/agents/columns/status/column



ALTER TABLE "agentic_db_app_public".agents 
    ALTER COLUMN status SET DEFAULT 'idle';

