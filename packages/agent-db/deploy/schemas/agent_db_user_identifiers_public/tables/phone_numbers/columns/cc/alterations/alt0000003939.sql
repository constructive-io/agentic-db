-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/cc/alterations/alt0000003939
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/cc/column


ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
  ALTER COLUMN cc SET NOT NULL;

