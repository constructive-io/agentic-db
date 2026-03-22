-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/constraints/trip_chunks_trip_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".trip_chunks 
  DROP CONSTRAINT trip_chunks_trip_id_fkey;


