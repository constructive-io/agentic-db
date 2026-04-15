-- Deploy: schemas/agentic_db_app_public/tables/events_chunks/columns/metadata/alterations/alt0000000954
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/events_chunks/columns/metadata/column



ALTER TABLE "agentic_db_app_public".events_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

