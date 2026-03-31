-- Deploy: schemas/agentic_db_app_public/tables/email_notes/constraints/email_notes_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_notes/table
-- requires: schemas/agentic_db_app_public/tables/email_recipients/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".email_notes 
  ADD CONSTRAINT email_notes_pkey PRIMARY KEY (id);

