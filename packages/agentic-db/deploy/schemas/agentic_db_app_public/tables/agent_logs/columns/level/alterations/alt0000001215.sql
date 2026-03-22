-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/level/alterations/alt0000001215
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/level/column
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/agent_id/alterations/alt0000001214


ALTER TABLE "agentic_db_app_public".agent_logs 
  ALTER COLUMN level SET NOT NULL;

