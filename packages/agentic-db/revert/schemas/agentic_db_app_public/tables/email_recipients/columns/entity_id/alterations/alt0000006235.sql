-- Revert: schemas/agentic_db_app_public/tables/email_recipients/columns/entity_id/alterations/alt0000006235


ALTER TABLE agentic_db_app_public.email_recipients 
  ALTER COLUMN entity_id DROP NOT NULL;


