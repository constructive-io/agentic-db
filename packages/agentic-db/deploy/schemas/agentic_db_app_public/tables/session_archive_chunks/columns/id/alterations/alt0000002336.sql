-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/id/alterations/alt0000002336
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/id/column



ALTER TABLE "agentic_db_app_public".session_archive_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

