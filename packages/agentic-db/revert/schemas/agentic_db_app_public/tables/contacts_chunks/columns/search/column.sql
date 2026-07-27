-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/search/column


ALTER TABLE agentic_db_app_public.contacts_chunks 
  DROP COLUMN search RESTRICT;


