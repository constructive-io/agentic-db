-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/columns/contact_id/alterations/alt0000000853
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/thread_participants/columns/contact_id/column


ALTER TABLE agentic_db_app_public.thread_participants 
  ALTER COLUMN contact_id SET NOT NULL;

