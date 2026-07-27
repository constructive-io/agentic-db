-- Deploy: schemas/agentic_db_app_public/tables/email_recipients/columns/email_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_recipients/table


ALTER TABLE agentic_db_app_public.email_recipients 
  ADD COLUMN email_id uuid;

