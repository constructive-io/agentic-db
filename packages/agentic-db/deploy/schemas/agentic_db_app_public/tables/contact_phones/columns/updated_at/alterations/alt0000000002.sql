-- Deploy: schemas/agentic_db_app_public/tables/contact_phones/columns/updated_at/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_phones/table
-- requires: schemas/agentic_db_app_public/tables/contact_phones/columns/updated_at/column


ALTER TABLE agentic_db_app_public.contact_phones 
  ALTER COLUMN updated_at SET DEFAULT now();

