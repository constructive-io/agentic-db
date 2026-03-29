-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/updated_at/alterations/alt0000010223


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  ALTER COLUMN updated_at DROP DEFAULT;


