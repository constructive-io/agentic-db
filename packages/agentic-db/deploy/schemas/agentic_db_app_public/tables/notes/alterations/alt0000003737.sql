-- Deploy: schemas/agentic_db_app_public/tables/notes/alterations/alt0000003737
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/main_image_id/column


ALTER TABLE agentic_db_app_public.notes 
  DISABLE ROW LEVEL SECURITY;

