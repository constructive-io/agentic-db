-- Deploy: schemas/agent_db_app_public/tables/interactions/indexes/interactions_occurred_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/occurred_at/column
-- requires: schemas/agent_db_app_public/tables/interactions/indexes/interactions_type_idx


CREATE INDEX interactions_occurred_at_idx ON agent_db_app_public.interactions USING BTREE ( occurred_at );

