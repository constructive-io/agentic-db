-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


ALTER TABLE agent_db_user_identifiers_public.phone_numbers 
  ADD COLUMN created_at timestamptz;

