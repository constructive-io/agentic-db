-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/id/alterations/alt0000001717


ALTER TABLE "agentic_db_app_public".itinerary_item_chunks 
  ALTER COLUMN id DROP NOT NULL;


