-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/is_primary/column


ALTER TABLE agent_db_user_identifiers_public.phone_numbers 
  DROP COLUMN is_primary RESTRICT;


