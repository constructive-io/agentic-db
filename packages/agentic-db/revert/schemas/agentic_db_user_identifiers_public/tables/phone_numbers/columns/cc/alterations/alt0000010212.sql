-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/cc/alterations/alt0000010212


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  ALTER COLUMN cc DROP NOT NULL;


