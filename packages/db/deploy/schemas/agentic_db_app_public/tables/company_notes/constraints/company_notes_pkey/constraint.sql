-- Deploy: schemas/agentic_db_app_public/tables/company_notes/constraints/company_notes_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_notes/table
-- requires: schemas/agentic_db_app_public/tables/contact_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".company_notes 
  ADD CONSTRAINT company_notes_pkey PRIMARY KEY (id);

