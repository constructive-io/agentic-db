-- Deploy: schemas/agentic_db_app_public/tables/venues/alterations/alt0000003726
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/main_image_id/column


ALTER TABLE agentic_db_app_public.venues 
  DISABLE ROW LEVEL SECURITY;

