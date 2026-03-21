-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/indexes/session_archive_chunks_session_archive_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/indexes/tool_chunks_tool_id_idx
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/session_archive_id/column


CREATE INDEX session_archive_chunks_session_archive_id_idx ON "agentic_db_app_public".session_archive_chunks USING BTREE ( session_archive_id );

