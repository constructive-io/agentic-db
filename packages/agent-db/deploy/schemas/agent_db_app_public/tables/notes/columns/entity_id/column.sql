-- Deploy: schemas/agent_db_app_public/tables/notes/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent_db_app_public".notes 
  ADD COLUMN entity_id uuid;

