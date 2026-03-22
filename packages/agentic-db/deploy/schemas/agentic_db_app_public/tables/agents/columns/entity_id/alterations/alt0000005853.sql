-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/entity_id/alterations/alt0000005853
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agents/columns/entity_id/column


ALTER TABLE agentic_db_app_public.agents 
  ALTER COLUMN entity_id SET NOT NULL;

