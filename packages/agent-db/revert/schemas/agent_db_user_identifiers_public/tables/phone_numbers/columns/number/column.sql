-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/number/column


ALTER TABLE agent_db_user_identifiers_public.phone_numbers 
  DROP COLUMN number RESTRICT;


