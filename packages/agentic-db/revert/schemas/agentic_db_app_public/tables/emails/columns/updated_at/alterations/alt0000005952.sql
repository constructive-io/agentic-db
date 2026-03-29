-- Revert: schemas/agentic_db_app_public/tables/emails/columns/updated_at/alterations/alt0000005952


ALTER TABLE agentic_db_app_public.emails 
  ALTER COLUMN updated_at DROP NOT NULL;


