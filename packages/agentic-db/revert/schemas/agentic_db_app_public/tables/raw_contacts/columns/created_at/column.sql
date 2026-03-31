-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/created_at/column


ALTER TABLE agentic_db_app_public.raw_contacts 
  DROP COLUMN created_at RESTRICT;


