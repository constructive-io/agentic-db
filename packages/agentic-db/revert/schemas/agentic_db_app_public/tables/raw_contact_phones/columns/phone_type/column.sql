-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/phone_type/column


ALTER TABLE agentic_db_app_public.raw_contact_phones 
  DROP COLUMN phone_type RESTRICT;


