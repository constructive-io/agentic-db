-- Deploy: schemas/agentic_db_app_public/tables/contact_links/columns/contact_id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/contact_id/column


ALTER TABLE agentic_db_app_public.contact_links 
  ALTER COLUMN contact_id SET NOT NULL;

