-- Deploy: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/updated_at/alterations/alt0000001723
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".itinerary_item_chunks 
    ALTER COLUMN updated_at SET DEFAULT now();

