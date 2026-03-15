-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/id/alterations/alt0000002405
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/id/column


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ALTER COLUMN id SET NOT NULL;

