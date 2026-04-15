-- Deploy: schemas/agentic_db_app_public/tables/email_notes/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_notes/table
-- requires: schemas/agentic_db_app_public/tables/email_recipients/indexes/email_recipients_contact_id_idx


ALTER TABLE agentic_db_app_public.email_notes 
  ENABLE ROW LEVEL SECURITY;

