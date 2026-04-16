-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/is_primary/column


ALTER TABLE agentic_db_app_public.raw_contact_phones 
  DROP COLUMN is_primary RESTRICT;


