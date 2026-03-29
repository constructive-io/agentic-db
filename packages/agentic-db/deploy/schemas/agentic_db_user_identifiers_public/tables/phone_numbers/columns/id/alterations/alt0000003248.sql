-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/id/alterations/alt0000003248
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/id/column


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  ALTER COLUMN id SET NOT NULL;

