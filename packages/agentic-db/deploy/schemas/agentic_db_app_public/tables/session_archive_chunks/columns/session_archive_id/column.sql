-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/session_archive_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/indexes/tool_chunks_tool_id_idx


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  ADD COLUMN session_archive_id uuid;

