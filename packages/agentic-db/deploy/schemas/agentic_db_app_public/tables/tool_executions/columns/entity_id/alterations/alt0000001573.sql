-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/columns/entity_id/alterations/alt0000001573
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/tool_executions/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".tool_executions 
  ALTER COLUMN entity_id SET NOT NULL;

