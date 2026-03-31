-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/embedding_stale/alterations/alt0000003378
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.tasks 
  ALTER COLUMN embedding_stale SET NOT NULL;

