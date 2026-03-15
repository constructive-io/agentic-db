-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/alterations/alt0000002430
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/column



ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
    ALTER COLUMN is_verified SET DEFAULT false;

