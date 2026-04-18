-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/columns/contact_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.thread_participants 
  ADD COLUMN contact_id uuid;

