-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/entity_id/alterations/alt0000003740
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/venues/columns/main_image_id/column


ALTER TABLE agentic_db_app_public.notes 
  ALTER COLUMN entity_id SET NOT NULL;

