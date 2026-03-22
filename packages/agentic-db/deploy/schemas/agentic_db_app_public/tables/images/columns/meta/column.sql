-- Deploy: schemas/agentic_db_app_public/tables/images/columns/meta/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/url/alterations/alt0000005529


ALTER TABLE agentic_db_app_public.images 
  ADD COLUMN meta jsonb;

