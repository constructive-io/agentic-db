-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/columns/embedding/column


GRANT UPDATE ON "agentic_db_app_public".session_archive_chunks TO authenticated;

