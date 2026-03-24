-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/website/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN website RESTRICT;


