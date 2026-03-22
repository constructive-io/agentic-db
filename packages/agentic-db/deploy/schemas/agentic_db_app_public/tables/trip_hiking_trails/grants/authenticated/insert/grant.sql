-- Deploy: schemas/agentic_db_app_public/tables/trip_hiking_trails/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/trip_places/policies/auth_del_entity_membership/policy


GRANT INSERT ON agentic_db_app_public.trip_hiking_trails TO authenticated;

