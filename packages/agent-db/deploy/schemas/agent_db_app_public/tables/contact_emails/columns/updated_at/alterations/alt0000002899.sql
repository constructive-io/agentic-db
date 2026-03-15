-- Deploy: schemas/agent_db_app_public/tables/contact_emails/columns/updated_at/alterations/alt0000002899
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_emails/table
-- requires: schemas/agent_db_app_public/tables/contact_emails/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/contact_emails/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".contact_emails 
  ALTER COLUMN updated_at SET NOT NULL;

