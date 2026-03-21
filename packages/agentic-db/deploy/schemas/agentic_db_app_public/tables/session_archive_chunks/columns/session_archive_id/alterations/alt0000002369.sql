-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/session_archive_id/alterations/alt0000002369
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/indexes/tool_chunks_tool_id_idx
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/session_archive_id/column


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  ALTER COLUMN session_archive_id SET NOT NULL;

