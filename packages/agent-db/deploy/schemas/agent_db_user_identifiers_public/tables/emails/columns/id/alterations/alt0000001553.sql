-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/id/alterations/alt0000001553
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/id/column


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ALTER COLUMN id SET NOT NULL;

