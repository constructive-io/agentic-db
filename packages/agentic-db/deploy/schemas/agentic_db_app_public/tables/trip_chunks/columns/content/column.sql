-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/columns/chunk_index/alterations/alt0000006308


ALTER TABLE agentic_db_app_public.trip_chunks 
  ADD COLUMN content text;

