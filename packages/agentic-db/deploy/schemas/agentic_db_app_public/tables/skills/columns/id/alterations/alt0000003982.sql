-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/id/alterations/alt0000003982
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/memories/columns/embedding/column



ALTER TABLE agentic_db_app_public.skills 
    ALTER COLUMN id SET DEFAULT uuidv7();

