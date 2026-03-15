-- Deploy: schemas/agent_db_app_public/tables/trips/indexes/trips_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_tags_gin_idx


CREATE INDEX trips_tags_gin_idx ON agent_db_app_public.trips USING GIN ( tags );

