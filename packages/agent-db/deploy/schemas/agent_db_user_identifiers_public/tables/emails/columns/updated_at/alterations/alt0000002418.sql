-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/updated_at/alterations/alt0000002418
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/updated_at/column


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ALTER COLUMN updated_at SET DEFAULT now();

