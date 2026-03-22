-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/columns/entity_id/alterations/alt0000002354
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.agent_tasks 
  ALTER COLUMN entity_id SET NOT NULL;

