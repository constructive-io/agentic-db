-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/constraints/contact_addresses_contact_id_fkey/constraint


ALTER TABLE agentic_db_app_public.contact_addresses 
  DROP CONSTRAINT contact_addresses_contact_id_fkey;


