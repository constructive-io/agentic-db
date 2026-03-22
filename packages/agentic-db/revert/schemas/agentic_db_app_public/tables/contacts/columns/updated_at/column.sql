-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/updated_at/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN updated_at RESTRICT;


