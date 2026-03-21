-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/columns/entity_id/alterations/alt0000004028
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.rule_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

