-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/main_image_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/search_tsv/column


ALTER TABLE agentic_db_app_public.contacts 
  ADD COLUMN main_image_id uuid;

