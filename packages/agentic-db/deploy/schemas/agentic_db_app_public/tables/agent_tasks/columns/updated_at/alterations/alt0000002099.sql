-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/columns/updated_at/alterations/alt0000002099
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".agent_tasks 
  ALTER COLUMN updated_at SET NOT NULL;

