-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/contact_id/column


ALTER TABLE agentic_db_app_public.contact_chunks 
  DROP COLUMN contact_id RESTRICT;


