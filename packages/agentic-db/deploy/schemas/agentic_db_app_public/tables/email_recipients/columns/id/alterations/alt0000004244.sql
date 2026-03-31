-- Deploy: schemas/agentic_db_app_public/tables/email_recipients/columns/id/alterations/alt0000004244
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/email_recipients/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/thread_participants/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.email_recipients 
  ALTER COLUMN id SET NOT NULL;

