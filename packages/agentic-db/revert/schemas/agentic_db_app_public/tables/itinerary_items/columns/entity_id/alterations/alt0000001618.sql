-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/entity_id/alterations/alt0000001618


ALTER TABLE "agentic_db_app_public".itinerary_items 
  ALTER COLUMN entity_id DROP NOT NULL;


