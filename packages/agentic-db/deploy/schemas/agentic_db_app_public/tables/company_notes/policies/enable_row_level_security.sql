-- Deploy: schemas/agentic_db_app_public/tables/company_notes/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_notes/table
-- requires: schemas/agentic_db_app_public/tables/contact_notes/indexes/contact_notes_note_id_idx


ALTER TABLE agentic_db_app_public.company_notes 
  ENABLE ROW LEVEL SECURITY;

