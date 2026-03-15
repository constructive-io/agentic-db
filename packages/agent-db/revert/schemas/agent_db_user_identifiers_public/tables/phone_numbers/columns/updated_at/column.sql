-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/updated_at/column


ALTER TABLE agent_db_user_identifiers_public.phone_numbers 
  DROP COLUMN updated_at RESTRICT;


