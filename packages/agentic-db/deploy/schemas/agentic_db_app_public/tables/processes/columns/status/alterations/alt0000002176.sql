-- Deploy: schemas/agentic_db_app_public/tables/processes/columns/status/alterations/alt0000002176
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/processes/columns/ended_at/column



ALTER TABLE "agentic_db_app_public".processes 
    ALTER COLUMN status SET DEFAULT 'running';

