-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".raw_contact_phones 
  DISABLE ROW LEVEL SECURITY;


