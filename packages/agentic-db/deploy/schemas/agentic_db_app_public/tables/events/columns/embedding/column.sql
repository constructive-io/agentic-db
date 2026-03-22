-- Deploy: schemas/agentic_db_app_public/tables/events/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/main_image_id/column


ALTER TABLE "agentic_db_app_public".events 
  ADD COLUMN embedding vector(768);

