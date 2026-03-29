-- Deploy: schemas/agentic_db_user_identifiers_public/tables/email_notes/columns/id/alterations/alt0000011547
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_notes/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_notes/columns/id/column
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_recipients/policies/auth_del_entity_membership/policy



ALTER TABLE agentic_db_user_identifiers_public.email_notes 
    ALTER COLUMN id SET DEFAULT uuidv7();

