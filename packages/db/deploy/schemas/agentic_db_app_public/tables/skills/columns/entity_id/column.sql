-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/embedding/column


ALTER TABLE "agentic_db_app_public".skills 
  ADD COLUMN entity_id uuid;

