-- Deploy: schemas/agentic_db_user_identifiers_public/tables/email_recipients/constraints/email_recipients_email_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/thread_participants/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_user_identifiers_public.email_recipients 
  ADD CONSTRAINT email_recipients_email_id_fkey 
    FOREIGN KEY(email_id) 
    REFERENCES agentic_db_user_identifiers_public.emails (id) 
    ON DELETE CASCADE;

