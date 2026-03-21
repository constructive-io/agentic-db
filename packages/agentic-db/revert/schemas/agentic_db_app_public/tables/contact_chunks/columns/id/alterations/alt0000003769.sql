-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/id/alterations/alt0000003769


ALTER TABLE agentic_db_app_public.contact_chunks 
  ALTER COLUMN id DROP NOT NULL;


