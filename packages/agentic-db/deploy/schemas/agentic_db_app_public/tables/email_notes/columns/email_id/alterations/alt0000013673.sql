-- Deploy: schemas/agentic_db_app_public/tables/email_notes/columns/email_id/alterations/alt0000013673
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_notes/table
-- requires: schemas/agentic_db_app_public/tables/email_notes/columns/email_id/column
-- requires: schemas/agentic_db_app_public/tables/email_recipients/indexes/email_recipients_contact_id_idx


ALTER TABLE agentic_db_app_public.email_notes 
  ALTER COLUMN email_id SET NOT NULL;

