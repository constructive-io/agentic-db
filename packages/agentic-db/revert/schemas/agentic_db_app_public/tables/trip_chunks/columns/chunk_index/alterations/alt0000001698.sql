-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/chunk_index/alterations/alt0000001698


ALTER TABLE "agentic_db_app_public".trip_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


