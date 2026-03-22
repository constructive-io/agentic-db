-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/ended_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/started_at/column


ALTER TABLE agentic_db_app_public.trips 
  ADD COLUMN ended_at timestamptz;

