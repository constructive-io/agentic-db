-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/created_at/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/created_at/column


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  ALTER COLUMN created_at SET DEFAULT now();

