-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/constraints/phone_numbers_pkey/constraint


ALTER TABLE agent_db_user_identifiers_public.phone_numbers 
  DROP CONSTRAINT phone_numbers_pkey;


