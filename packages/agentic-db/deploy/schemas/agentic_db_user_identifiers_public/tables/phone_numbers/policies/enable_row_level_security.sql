-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  ENABLE ROW LEVEL SECURITY;

