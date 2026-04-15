-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/created_at/column


ALTER TABLE agentic_db_app_public.raw_contact_phones 
  DROP COLUMN created_at RESTRICT;


