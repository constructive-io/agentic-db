-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/updated_at/column


ALTER TABLE agentic_db_app_public.raw_contacts 
  DROP COLUMN updated_at RESTRICT;


