-- Deploy: schemas/agentic_db_app_public/tables/raw_contacts/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/table


ALTER TABLE agentic_db_app_public.raw_contacts 
  ADD COLUMN updated_at timestamptz;

