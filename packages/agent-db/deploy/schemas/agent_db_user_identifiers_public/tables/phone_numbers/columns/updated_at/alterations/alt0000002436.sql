-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/updated_at/alterations/alt0000002436
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/updated_at/column


ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
  ALTER COLUMN updated_at SET DEFAULT now();

