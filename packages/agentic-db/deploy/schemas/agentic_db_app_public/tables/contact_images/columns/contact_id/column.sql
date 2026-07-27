-- Deploy: schemas/agentic_db_app_public/tables/contact_images/columns/contact_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_images/table


ALTER TABLE agentic_db_app_public.contact_images 
  ADD COLUMN contact_id uuid;

