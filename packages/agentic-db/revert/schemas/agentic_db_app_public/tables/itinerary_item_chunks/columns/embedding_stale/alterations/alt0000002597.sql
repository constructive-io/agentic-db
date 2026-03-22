-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/embedding_stale/alterations/alt0000002597




ALTER TABLE "agentic_db_app_public".itinerary_item_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



