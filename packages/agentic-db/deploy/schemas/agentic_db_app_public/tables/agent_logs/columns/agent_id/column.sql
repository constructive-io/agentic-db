-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/updated_at/alterations/alt0000001213


ALTER TABLE "agentic_db_app_public".agent_logs 
  ADD COLUMN agent_id uuid;

