-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/constraints/raw_contacts_pkey/constraint


ALTER TABLE agentic_db_app_public.raw_contacts 
  DROP CONSTRAINT raw_contacts_pkey;


