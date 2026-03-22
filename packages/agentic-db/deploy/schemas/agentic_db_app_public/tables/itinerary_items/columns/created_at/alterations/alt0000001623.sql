-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/columns/created_at/alterations/alt0000001623
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".itinerary_items 
  ALTER COLUMN created_at SET NOT NULL;

