-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/tags/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN tags RESTRICT;


