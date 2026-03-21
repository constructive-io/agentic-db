-- Deploy: schemas/agentic_db_app_public/tables/sessions/columns/ended_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/started_at/column


ALTER TABLE "agentic_db_app_public".sessions 
  ADD COLUMN ended_at timestamptz;

