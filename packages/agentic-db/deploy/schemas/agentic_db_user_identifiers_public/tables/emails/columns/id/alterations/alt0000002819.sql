-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/id/alterations/alt0000002819
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/id/column


ALTER TABLE agentic_db_user_identifiers_public.emails 
  ALTER COLUMN id SET NOT NULL;

