-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_verified/alterations/alt0000005380
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_verified/column


ALTER TABLE agentic_db_user_identifiers_public.emails 
  ALTER COLUMN is_verified SET NOT NULL;

