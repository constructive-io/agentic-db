-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/alterations/alt0000001577
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/column


ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
  ALTER COLUMN is_verified SET NOT NULL;

