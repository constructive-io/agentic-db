-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/active_count/alterations/alt0000001386
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/overview/column
-- requires: schemas/agentic_db_app_public/tables/documents/columns/active_count/column



ALTER TABLE "agentic_db_app_public".documents 
    ALTER COLUMN active_count SET DEFAULT 0;

