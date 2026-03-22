-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/columns/sort_order/alterations/alt0000001629
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/notes/column
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/sort_order/column



ALTER TABLE "agentic_db_app_public".itinerary_items 
    ALTER COLUMN sort_order SET DEFAULT 0;

