-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/constraints/itinerary_items_pkey/constraint


ALTER TABLE "agentic_db_app_public".itinerary_items 
  DROP CONSTRAINT itinerary_items_pkey;


