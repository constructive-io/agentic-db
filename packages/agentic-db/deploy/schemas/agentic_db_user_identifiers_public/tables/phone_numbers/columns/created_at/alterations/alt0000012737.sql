-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/created_at/alterations/alt0000012737
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/created_at/column


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  ALTER COLUMN created_at SET DEFAULT now();

