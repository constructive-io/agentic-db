-- Deploy: schemas/agentic_db_app_public/tables/sessions/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/embedding/column


ALTER TABLE "agentic_db_app_public".sessions 
  ADD COLUMN id uuid;

