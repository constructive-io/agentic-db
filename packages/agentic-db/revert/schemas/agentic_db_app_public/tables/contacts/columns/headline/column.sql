-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/headline/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN headline RESTRICT;


