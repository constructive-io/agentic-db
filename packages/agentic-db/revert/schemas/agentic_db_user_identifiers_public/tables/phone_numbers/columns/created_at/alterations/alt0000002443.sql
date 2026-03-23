-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/created_at/alterations/alt0000002443


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  ALTER COLUMN created_at DROP DEFAULT;


