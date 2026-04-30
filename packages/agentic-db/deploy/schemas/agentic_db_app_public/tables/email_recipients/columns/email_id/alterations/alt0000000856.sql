-- Deploy: schemas/agentic_db_app_public/tables/email_recipients/columns/email_id/alterations/alt0000000856
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/email_recipients/columns/email_id/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.email_recipients 
  ALTER COLUMN email_id SET NOT NULL;

