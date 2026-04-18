-- Deploy: schemas/agentic_db_app_public/tables/email_recipients/columns/email_id/alterations/alt0000001375
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/email_recipients/columns/email_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.email_recipients 
  ALTER COLUMN email_id SET NOT NULL;

