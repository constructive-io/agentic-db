-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/constraints/emails_chunks_emails_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE agentic_db_app_public.emails_chunks 
  ADD CONSTRAINT emails_chunks_emails_id_fkey 
    FOREIGN KEY(emails_id) 
    REFERENCES agentic_db_app_public.emails (id) 
    ON DELETE CASCADE;

