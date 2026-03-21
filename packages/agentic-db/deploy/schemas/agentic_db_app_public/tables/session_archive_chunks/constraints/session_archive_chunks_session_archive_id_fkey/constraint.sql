-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/constraints/session_archive_chunks_session_archive_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/indexes/tool_chunks_tool_id_idx


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  ADD CONSTRAINT session_archive_chunks_session_archive_id_fkey 
    FOREIGN KEY(session_archive_id) 
    REFERENCES "agentic_db_app_public".session_archives (id) 
    ON DELETE CASCADE;

