-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/policies/auth_del_entity_membership/policy


GRANT INSERT ON "agentic_db_app_public".goal_habits TO authenticated;

