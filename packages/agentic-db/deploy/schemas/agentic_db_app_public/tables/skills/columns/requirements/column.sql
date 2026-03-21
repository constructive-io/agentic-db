-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/requirements/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/interface/column


ALTER TABLE "agentic_db_app_public".skills 
  ADD COLUMN requirements jsonb;

