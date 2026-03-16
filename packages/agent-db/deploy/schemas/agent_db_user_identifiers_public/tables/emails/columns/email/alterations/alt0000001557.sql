-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/email/alterations/alt0000001557
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/email/column


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ALTER COLUMN email SET NOT NULL;

