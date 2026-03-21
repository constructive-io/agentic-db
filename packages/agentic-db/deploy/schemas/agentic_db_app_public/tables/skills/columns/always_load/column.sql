-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/always_load/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/prerequisites/column


ALTER TABLE agentic_db_app_public.skills 
  ADD COLUMN always_load bool;

