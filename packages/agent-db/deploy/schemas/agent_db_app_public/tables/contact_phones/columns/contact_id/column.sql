-- Deploy: schemas/agent_db_app_public/tables/contact_phones/columns/contact_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_phones/table
-- requires: schemas/agent_db_app_public/tables/contact_emails/constraints/contact_emails_contact_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_phones 
  ADD COLUMN contact_id uuid;

