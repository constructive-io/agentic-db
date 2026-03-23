-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/policies/enable_row_level_security


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  DISABLE ROW LEVEL SECURITY;


