-- Deploy: schemas/agentic_db_user_identifiers_public/tables/email_recipients/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/thread_participants/policies/auth_del_entity_membership/policy


GRANT DELETE ON agentic_db_user_identifiers_public.email_recipients TO authenticated;

