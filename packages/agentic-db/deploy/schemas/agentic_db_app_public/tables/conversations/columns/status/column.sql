-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/status/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/agent_id/column


ALTER TABLE "agentic_db_app_public".conversations 
  ADD COLUMN status text;

