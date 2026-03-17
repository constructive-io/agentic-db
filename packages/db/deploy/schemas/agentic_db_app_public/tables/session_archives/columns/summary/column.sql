-- Deploy: schemas/agentic_db_app_public/tables/session_archives/columns/summary/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/archive_index/alterations/alt0000001257


ALTER TABLE "agentic_db_app_public".session_archives 
  ADD COLUMN summary text;

