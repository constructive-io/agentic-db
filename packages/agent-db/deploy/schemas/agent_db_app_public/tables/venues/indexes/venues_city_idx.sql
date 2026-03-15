-- Deploy: schemas/agent_db_app_public/tables/venues/indexes/venues_city_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/city/column
-- requires: schemas/agent_db_app_public/tables/events/indexes/events_event_type_idx


CREATE INDEX venues_city_idx ON "agent_db_app_public".venues USING BTREE ( city );

