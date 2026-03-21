-- Deploy: schemas/agentic_db_app_public/tables/activity_log_chunks/alterations/alt0000004330
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.activity_log_chunks 
  DISABLE ROW LEVEL SECURITY;

