-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/category/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/description/column


ALTER TABLE "agentic_db_app_public".skills 
  ADD COLUMN category text;

