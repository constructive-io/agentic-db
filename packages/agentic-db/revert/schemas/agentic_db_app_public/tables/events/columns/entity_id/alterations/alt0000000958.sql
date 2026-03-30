-- Revert: schemas/agentic_db_app_public/tables/events/columns/entity_id/alterations/alt0000000958


ALTER TABLE "agentic_db_app_public".events 
  ALTER COLUMN entity_id DROP NOT NULL;


