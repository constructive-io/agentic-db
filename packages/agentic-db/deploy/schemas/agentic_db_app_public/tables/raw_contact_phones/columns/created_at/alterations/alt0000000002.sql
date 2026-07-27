-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/created_at/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_phones/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/created_at/column


ALTER TABLE agentic_db_app_public.raw_contact_phones 
  ALTER COLUMN created_at SET DEFAULT now();

