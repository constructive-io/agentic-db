-- Deploy: schemas/agent_db_app_public/tables/events/indexes/events_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/deals/indexes/deals_tags_gin_idx


CREATE INDEX events_tags_gin_idx ON "agent_db_app_public".events USING GIN ( tags );

