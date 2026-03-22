-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/events/alterations/alt0000000913


ALTER TABLE "agentic_db_app_public".venues 
  ADD COLUMN entity_id uuid;

