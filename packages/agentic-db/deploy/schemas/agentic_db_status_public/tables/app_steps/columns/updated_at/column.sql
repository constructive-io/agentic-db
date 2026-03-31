-- Deploy: schemas/agentic_db_status_public/tables/app_steps/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_steps/table


ALTER TABLE "agentic_db_status_public".app_steps 
  ADD COLUMN updated_at timestamptz;

