-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/constraints/phone_numbers_number_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


ALTER TABLE agent_db_user_identifiers_public.phone_numbers 
  ADD CONSTRAINT phone_numbers_number_key 
    UNIQUE (number);

