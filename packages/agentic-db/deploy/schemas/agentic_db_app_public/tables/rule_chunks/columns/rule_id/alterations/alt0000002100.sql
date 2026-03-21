-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/columns/rule_id/alterations/alt0000002100
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/rule_id/column
-- requires: schemas/agentic_db_app_public/tables/task_chunks/indexes/task_chunks_task_id_idx


ALTER TABLE "agentic_db_app_public".rule_chunks 
  ALTER COLUMN rule_id SET NOT NULL;

