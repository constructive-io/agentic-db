-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/active_count/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/overview/column


ALTER TABLE "agentic_db_app_public".skills 
  ADD COLUMN active_count int;

