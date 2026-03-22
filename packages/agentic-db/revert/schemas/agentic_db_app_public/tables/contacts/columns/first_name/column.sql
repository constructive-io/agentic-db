-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/first_name/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN first_name RESTRICT;


