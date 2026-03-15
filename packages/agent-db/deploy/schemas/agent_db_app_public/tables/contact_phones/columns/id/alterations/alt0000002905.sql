-- Deploy: schemas/agent_db_app_public/tables/contact_phones/columns/id/alterations/alt0000002905
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_phones/table
-- requires: schemas/agent_db_app_public/tables/contact_phones/columns/id/column
-- requires: schemas/agent_db_app_public/tables/contact_emails/columns/embedding/column


ALTER TABLE "agent_db_app_public".contact_phones 
  ALTER COLUMN id SET NOT NULL;

