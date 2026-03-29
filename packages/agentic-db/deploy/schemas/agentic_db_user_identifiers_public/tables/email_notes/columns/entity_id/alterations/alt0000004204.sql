-- Deploy: schemas/agentic_db_user_identifiers_public/tables/email_notes/columns/entity_id/alterations/alt0000004204
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_notes/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_notes/columns/entity_id/column
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_recipients/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_user_identifiers_public.email_notes 
  ALTER COLUMN entity_id SET NOT NULL;

