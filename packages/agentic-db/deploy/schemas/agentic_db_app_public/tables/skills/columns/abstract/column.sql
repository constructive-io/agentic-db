-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/abstract/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/is_active/alterations/alt0000002004


ALTER TABLE "agentic_db_app_public".skills 
  ADD COLUMN abstract text;

