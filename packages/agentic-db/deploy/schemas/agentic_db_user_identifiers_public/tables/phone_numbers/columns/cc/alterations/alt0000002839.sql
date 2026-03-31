-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/cc/alterations/alt0000002839
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/cc/column


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  ALTER COLUMN cc SET NOT NULL;

