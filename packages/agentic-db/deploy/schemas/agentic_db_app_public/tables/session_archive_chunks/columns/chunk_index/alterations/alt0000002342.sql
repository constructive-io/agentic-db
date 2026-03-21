-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/chunk_index/alterations/alt0000002342
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/updated_at/alterations/alt0000002341


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

