-- Deploy: schemas/agentic_db_app_public/tables/venues_chunks/columns/venues_id/alterations/alt0000000976
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/columns/venues_id/column


ALTER TABLE "agentic_db_app_public".venues_chunks 
  ALTER COLUMN venues_id SET NOT NULL;

