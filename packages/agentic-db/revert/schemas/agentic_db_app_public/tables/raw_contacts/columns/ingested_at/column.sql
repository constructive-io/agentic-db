-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/ingested_at/column


ALTER TABLE agentic_db_app_public.raw_contacts 
  DROP COLUMN ingested_at RESTRICT;


