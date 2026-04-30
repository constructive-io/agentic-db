-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/alterations/alt0000000850
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.thread_participants 
  DISABLE ROW LEVEL SECURITY;

