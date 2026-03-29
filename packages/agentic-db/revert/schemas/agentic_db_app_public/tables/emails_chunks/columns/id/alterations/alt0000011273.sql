-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/id/alterations/alt0000011273


ALTER TABLE agentic_db_app_public.emails_chunks 
  ALTER COLUMN id DROP NOT NULL;


