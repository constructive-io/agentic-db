-- Deploy: schemas/agentic_db_app_public/tables/deal_notes/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_notes/table
-- requires: schemas/agentic_db_app_public/tables/company_notes/indexes/company_notes_note_id_idx


ALTER TABLE agentic_db_app_public.deal_notes 
  ENABLE ROW LEVEL SECURITY;

