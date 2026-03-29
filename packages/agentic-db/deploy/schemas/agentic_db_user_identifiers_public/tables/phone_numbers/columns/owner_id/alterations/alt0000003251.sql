-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/owner_id/alterations/alt0000003251
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/owner_id/column



ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
    ALTER COLUMN owner_id SET DEFAULT jwt_public.current_user_id();

