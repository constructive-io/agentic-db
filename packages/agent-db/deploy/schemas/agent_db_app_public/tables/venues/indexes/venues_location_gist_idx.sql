-- Deploy: schemas/agent_db_app_public/tables/venues/indexes/venues_location_gist_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/location/column
-- requires: schemas/agent_db_app_public/tables/tasks/indexes/tasks_task_type_idx


CREATE INDEX venues_location_gist_idx ON "agent_db_app_public".venues USING GIST ( location );

