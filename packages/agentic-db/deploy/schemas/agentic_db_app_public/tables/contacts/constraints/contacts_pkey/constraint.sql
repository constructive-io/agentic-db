-- Deploy: schemas/agentic_db_app_public/tables/contacts/constraints/contacts_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/embedding/column


ALTER TABLE "agentic_db_app_public".contacts 
  ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);

