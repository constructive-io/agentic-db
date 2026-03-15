-- Deploy: schemas/agent_db_app_public/tables/contact_emails/columns/is_primary/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_emails/table
-- requires: schemas/agent_db_app_public/tables/contact_emails/columns/label/alterations/alt0000002902


ALTER TABLE "agent_db_app_public".contact_emails 
  ADD COLUMN is_primary boolean;

