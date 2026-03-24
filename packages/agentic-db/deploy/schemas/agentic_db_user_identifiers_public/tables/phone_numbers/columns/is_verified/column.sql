-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table


ALTER TABLE "agentic_db_user_identifiers_public".phone_numbers 
  ADD COLUMN is_verified boolean;

