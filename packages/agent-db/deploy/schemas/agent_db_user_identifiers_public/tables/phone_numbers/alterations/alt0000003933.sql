-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/alterations/alt0000003933
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
  DISABLE ROW LEVEL SECURITY;

