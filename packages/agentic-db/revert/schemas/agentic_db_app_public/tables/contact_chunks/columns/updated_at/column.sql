-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.contact_chunks 
  DROP COLUMN updated_at RESTRICT;


