-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.contact_addresses 
  DISABLE ROW LEVEL SECURITY;


