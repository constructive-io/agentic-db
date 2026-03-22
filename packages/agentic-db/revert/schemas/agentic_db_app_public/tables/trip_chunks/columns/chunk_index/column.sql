-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".trip_chunks 
  DROP COLUMN chunk_index RESTRICT;


