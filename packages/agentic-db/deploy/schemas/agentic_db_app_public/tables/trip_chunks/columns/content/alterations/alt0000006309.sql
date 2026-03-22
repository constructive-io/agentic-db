-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/columns/content/alterations/alt0000006309
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/columns/chunk_index/alterations/alt0000006308


ALTER TABLE agentic_db_app_public.trip_chunks 
  ALTER COLUMN content SET NOT NULL;

