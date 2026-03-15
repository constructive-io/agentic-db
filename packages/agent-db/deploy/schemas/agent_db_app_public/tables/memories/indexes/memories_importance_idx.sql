-- Deploy: schemas/agent_db_app_public/tables/memories/indexes/memories_importance_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/rules/indexes/rules_is_active_idx
-- requires: schemas/agent_db_app_public/tables/memories/columns/importance/column


CREATE INDEX memories_importance_idx ON agent_db_app_public.memories USING BTREE ( importance );

