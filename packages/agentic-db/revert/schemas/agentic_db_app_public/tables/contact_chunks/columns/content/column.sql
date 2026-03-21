-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.contact_chunks 
  DROP COLUMN content RESTRICT;


