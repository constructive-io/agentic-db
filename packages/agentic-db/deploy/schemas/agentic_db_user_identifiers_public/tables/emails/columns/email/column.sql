-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/email/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table


ALTER TABLE agentic_db_user_identifiers_public.emails 
  ADD COLUMN email email;

