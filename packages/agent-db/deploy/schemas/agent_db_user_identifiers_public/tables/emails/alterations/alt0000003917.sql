-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/alterations/alt0000003917
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table


ALTER TABLE "agent_db_user_identifiers_public".emails 
  DISABLE ROW LEVEL SECURITY;

