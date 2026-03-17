-- Deploy: schemas/agentic_db_app_public/tables/sessions/columns/compression_count/alterations/alt0000001128
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/archived_messages/column
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/compression_count/column



ALTER TABLE "agentic_db_app_public".sessions 
    ALTER COLUMN compression_count SET DEFAULT 0;

