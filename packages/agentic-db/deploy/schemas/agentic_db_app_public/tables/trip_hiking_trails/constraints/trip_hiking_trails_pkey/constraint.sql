-- Deploy: schemas/agentic_db_app_public/tables/trip_hiking_trails/constraints/trip_hiking_trails_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/trip_places/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.trip_hiking_trails 
  ADD CONSTRAINT trip_hiking_trails_pkey PRIMARY KEY (id);

