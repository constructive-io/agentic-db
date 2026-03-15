-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/updated_at/alterations/alt0000000732


ALTER TABLE agent_db_user_identifiers_public.phone_numbers 
  ALTER COLUMN updated_at DROP DEFAULT;


