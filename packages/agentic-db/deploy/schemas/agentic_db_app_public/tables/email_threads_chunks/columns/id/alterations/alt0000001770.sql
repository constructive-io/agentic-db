-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/id/alterations/alt0000001770
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/id/column


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  ALTER COLUMN id SET NOT NULL;

