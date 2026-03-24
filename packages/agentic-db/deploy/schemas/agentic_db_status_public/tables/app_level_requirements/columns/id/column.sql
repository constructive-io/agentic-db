-- Deploy: schemas/agentic_db_status_public/tables/app_level_requirements/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table


ALTER TABLE "agentic_db_status_public".app_level_requirements 
  ADD COLUMN id uuid;

