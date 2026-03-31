-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/emails_id/alterations/alt0000003976


ALTER TABLE agentic_db_app_public.emails_chunks 
  ALTER COLUMN emails_id DROP NOT NULL;


