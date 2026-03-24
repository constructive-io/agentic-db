-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/alterations/alt0000001769
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  DISABLE ROW LEVEL SECURITY;

