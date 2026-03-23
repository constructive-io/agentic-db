-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/is_primary/alterations/alt0000002440


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  ALTER COLUMN is_primary DROP NOT NULL;


