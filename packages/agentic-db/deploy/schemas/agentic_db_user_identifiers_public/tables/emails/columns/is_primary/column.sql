-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_primary/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_user_identifiers_public.emails 
  ADD COLUMN is_primary boolean;

