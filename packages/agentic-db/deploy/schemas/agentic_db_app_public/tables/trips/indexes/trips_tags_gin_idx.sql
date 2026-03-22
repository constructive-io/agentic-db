-- Deploy: schemas/agentic_db_app_public/tables/trips/indexes/trips_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/goal_habits/policies/auth_del_entity_membership/policy


CREATE INDEX trips_tags_gin_idx ON "agentic_db_app_public".trips USING GIN ( tags );

