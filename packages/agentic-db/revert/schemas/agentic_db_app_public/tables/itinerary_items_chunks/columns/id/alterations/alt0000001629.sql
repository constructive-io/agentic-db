-- Revert: schemas/agentic_db_app_public/tables/itinerary_items_chunks/columns/id/alterations/alt0000001629


ALTER TABLE "agentic_db_app_public".itinerary_items_chunks 
  ALTER COLUMN id DROP NOT NULL;


