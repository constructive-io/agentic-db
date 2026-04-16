-- Deploy: schemas/agentic_db_app_public/tables/deal_notes/alterations/alt0000000693
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_notes/table
-- requires: schemas/agentic_db_app_public/tables/company_notes/indexes/company_notes_note_id_idx


ALTER TABLE agentic_db_app_public.deal_notes 
  DISABLE ROW LEVEL SECURITY;

