-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/confidence/column


ALTER TABLE agentic_db_app_public.raw_contact_phones 
  DROP COLUMN confidence RESTRICT;


