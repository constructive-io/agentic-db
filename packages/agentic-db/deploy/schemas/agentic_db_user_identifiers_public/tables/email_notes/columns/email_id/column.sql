-- Deploy: schemas/agentic_db_user_identifiers_public/tables/email_notes/columns/email_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_notes/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_recipients/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_user_identifiers_public.email_notes 
  ADD COLUMN email_id uuid;

