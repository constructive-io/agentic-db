-- Deploy: schemas/agent_db_app_public/tables/contacts/constraints/contacts_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/images/columns/embedding/column


ALTER TABLE "agent_db_app_public".contacts 
  ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);

