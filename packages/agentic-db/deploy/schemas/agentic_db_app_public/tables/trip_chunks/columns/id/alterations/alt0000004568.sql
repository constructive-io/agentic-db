-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/columns/id/alterations/alt0000004568
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/document_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.trip_chunks 
  ALTER COLUMN id SET NOT NULL;

