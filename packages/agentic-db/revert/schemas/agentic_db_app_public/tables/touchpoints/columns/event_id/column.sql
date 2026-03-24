-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/event_id/column


ALTER TABLE "agentic_db_app_public".touchpoints 
  DROP COLUMN event_id RESTRICT;


