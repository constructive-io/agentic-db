-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


ALTER TABLE agent_db_user_identifiers_public.phone_numbers 
  ADD COLUMN is_verified boolean;

