-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/is_primary/alterations/alt0000003880
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/is_primary/column


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ALTER COLUMN is_primary SET NOT NULL;

