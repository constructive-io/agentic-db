-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/number/alterations/alt0000003254


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  ALTER COLUMN number DROP NOT NULL;


