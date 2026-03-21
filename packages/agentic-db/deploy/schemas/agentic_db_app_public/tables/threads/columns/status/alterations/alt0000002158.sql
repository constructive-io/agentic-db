-- Deploy: schemas/agentic_db_app_public/tables/threads/columns/status/alterations/alt0000002158
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/threads/columns/summary/column



ALTER TABLE "agentic_db_app_public".threads 
    ALTER COLUMN status SET DEFAULT 'open';

