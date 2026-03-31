-- Revert: schemas/agentic_db_app_public/tables/email_recipients/columns/email_id/alterations/alt0000004242


ALTER TABLE agentic_db_app_public.email_recipients 
  ALTER COLUMN email_id DROP NOT NULL;


