-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/metadata/column


ALTER TABLE agentic_db_app_public.contacts_chunks 
  DROP COLUMN metadata RESTRICT;


