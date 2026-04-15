-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/created_at/column


ALTER TABLE agentic_db_app_public.contact_addresses 
  DROP COLUMN created_at RESTRICT;


