-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_primary/alterations/alt0000012716
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_primary/column


ALTER TABLE agentic_db_user_identifiers_public.emails 
  ALTER COLUMN is_primary SET NOT NULL;

