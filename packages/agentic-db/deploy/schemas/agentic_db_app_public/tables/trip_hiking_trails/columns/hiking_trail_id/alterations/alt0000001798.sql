-- Deploy: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/hiking_trail_id/alterations/alt0000001798
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/hiking_trail_id/column
-- requires: schemas/agentic_db_app_public/tables/trip_places/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".trip_hiking_trails 
  ALTER COLUMN hiking_trail_id SET NOT NULL;

