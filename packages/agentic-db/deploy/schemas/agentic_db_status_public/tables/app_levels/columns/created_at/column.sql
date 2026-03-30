-- Deploy: schemas/agentic_db_status_public/tables/app_levels/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_levels/table


ALTER TABLE "agentic_db_status_public".app_levels 
  ADD COLUMN created_at timestamptz;

