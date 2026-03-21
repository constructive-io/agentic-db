-- Deploy: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/chunk_index/alterations/alt0000002352


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  ADD COLUMN content text;

