-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".trip_chunks 
  DROP COLUMN created_at RESTRICT;


