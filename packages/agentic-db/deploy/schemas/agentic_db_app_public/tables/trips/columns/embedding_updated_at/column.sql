-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/embedding_updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table


ALTER TABLE agentic_db_app_public.trips 
  ADD COLUMN embedding_updated_at timestamptz;

