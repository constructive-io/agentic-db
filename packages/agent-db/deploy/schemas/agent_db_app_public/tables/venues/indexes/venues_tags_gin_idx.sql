-- Deploy: schemas/agent_db_app_public/tables/venues/indexes/venues_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/events/indexes/events_tags_gin_idx


CREATE INDEX venues_tags_gin_idx ON agent_db_app_public.venues USING GIN ( tags );

