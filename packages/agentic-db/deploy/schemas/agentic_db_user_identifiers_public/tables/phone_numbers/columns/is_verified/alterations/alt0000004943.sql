-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/alterations/alt0000004943
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/column



ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
    ALTER COLUMN is_verified SET DEFAULT false;

