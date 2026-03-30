-- Deploy: schemas/agentic_db_app_public/tables/email_notes/alterations/alt0000002121
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_notes/table
-- requires: schemas/agentic_db_app_public/tables/email_recipients/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".email_notes 
  DISABLE ROW LEVEL SECURITY;

