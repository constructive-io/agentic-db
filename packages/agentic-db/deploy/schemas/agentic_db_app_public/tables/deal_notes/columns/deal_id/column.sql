-- Deploy: schemas/agentic_db_app_public/tables/deal_notes/columns/deal_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_notes/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.deal_notes 
  ADD COLUMN deal_id uuid;

