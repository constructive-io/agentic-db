-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


ALTER TABLE agent_db_user_identifiers_public.phone_numbers 
  ENABLE ROW LEVEL SECURITY;

