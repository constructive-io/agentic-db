-- Deploy: schemas/agent_db_app_public/tables/venues/indexes/venues_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/name/column
-- requires: schemas/agent_db_app_public/tables/events/indexes/events_name_gin_idx


CREATE INDEX venues_name_gin_idx ON "agent_db_app_public".venues USING gin ( name gin_trgm_ops );

