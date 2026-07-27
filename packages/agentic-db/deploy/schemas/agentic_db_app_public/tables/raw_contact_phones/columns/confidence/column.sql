-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/confidence/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_phones/table


ALTER TABLE agentic_db_app_public.raw_contact_phones 
  ADD COLUMN confidence numeric;

