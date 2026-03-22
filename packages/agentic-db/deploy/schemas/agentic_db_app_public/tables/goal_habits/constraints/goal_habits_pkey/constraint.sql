-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/constraints/goal_habits_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.goal_habits 
  ADD CONSTRAINT goal_habits_pkey PRIMARY KEY (id);

