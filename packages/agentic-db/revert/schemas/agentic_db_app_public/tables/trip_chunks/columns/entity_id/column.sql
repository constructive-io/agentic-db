-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".trip_chunks 
  DROP COLUMN entity_id RESTRICT;


