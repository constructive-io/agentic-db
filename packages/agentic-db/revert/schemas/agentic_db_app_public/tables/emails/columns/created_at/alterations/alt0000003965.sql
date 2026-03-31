-- Revert: schemas/agentic_db_app_public/tables/emails/columns/created_at/alterations/alt0000003965


ALTER TABLE agentic_db_app_public.emails 
  ALTER COLUMN created_at DROP NOT NULL;


