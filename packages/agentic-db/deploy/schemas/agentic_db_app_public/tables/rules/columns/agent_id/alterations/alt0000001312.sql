-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/agent_id/alterations/alt0000001312
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_logs/indexes/agent_logs_agent_id_idx


ALTER TABLE "agentic_db_app_public".rules 
  ALTER COLUMN agent_id SET NOT NULL;

