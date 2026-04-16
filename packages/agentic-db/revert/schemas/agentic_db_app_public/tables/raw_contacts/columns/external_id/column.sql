-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/external_id/column


ALTER TABLE agentic_db_app_public.raw_contacts 
  DROP COLUMN external_id RESTRICT;


