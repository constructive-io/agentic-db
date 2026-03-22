-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/columns/id/alterations/alt0000001499
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx



ALTER TABLE "agentic_db_app_public".agent_tasks 
    ALTER COLUMN id SET DEFAULT uuidv7();

