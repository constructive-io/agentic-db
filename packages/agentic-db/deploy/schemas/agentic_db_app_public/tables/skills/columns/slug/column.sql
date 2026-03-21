-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/slug/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/name/alterations/alt0000002002


ALTER TABLE "agentic_db_app_public".skills 
  ADD COLUMN slug text;

