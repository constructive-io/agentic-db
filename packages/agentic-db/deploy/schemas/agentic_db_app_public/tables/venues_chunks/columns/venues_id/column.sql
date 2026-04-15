-- Deploy: schemas/agentic_db_app_public/tables/venues_chunks/columns/venues_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/table


ALTER TABLE "agentic_db_app_public".venues_chunks 
  ADD COLUMN venues_id uuid;

