-- Deploy: schemas/agent_db_app_public/tables/contact_phones/constraints/contact_phones_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_phones/table
-- requires: schemas/agent_db_app_public/tables/contact_emails/columns/embedding/column


ALTER TABLE "agent_db_app_public".contact_phones 
  ADD CONSTRAINT contact_phones_pkey PRIMARY KEY (id);

