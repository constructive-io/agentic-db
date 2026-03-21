-- Deploy: schemas/agentic_db_app_public/tables/images/columns/url/alterations/alt0000003687
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/url/column
-- requires: schemas/agentic_db_app_public/tables/images/columns/updated_at/alterations/alt0000003686


ALTER TABLE agentic_db_app_public.images 
  ALTER COLUMN url SET NOT NULL;

