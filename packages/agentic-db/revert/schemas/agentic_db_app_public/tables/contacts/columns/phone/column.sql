-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/phone/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN phone RESTRICT;


