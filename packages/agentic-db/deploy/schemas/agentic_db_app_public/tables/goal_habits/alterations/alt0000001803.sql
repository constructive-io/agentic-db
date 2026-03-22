-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/alterations/alt0000001803
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/policies/auth_del_entity_membership/policy


COMMENT ON TABLE "agentic_db_app_public".goal_habits IS E'@behavior +manyToMany';

