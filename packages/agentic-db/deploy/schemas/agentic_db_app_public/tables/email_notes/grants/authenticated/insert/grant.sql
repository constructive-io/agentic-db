-- Deploy: schemas/agentic_db_app_public/tables/email_notes/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_notes/table
-- requires: schemas/agentic_db_app_public/tables/email_recipients/policies/auth_del_entity_membership/policy


GRANT INSERT ON agentic_db_app_public.email_notes TO authenticated;

