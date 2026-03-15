-- Deploy: schemas/agent_db_app_public/tables/memories/indexes/memories_verified_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/verified/column
-- requires: schemas/agent_db_app_public/tables/memories/indexes/memories_importance_idx


CREATE INDEX memories_verified_idx ON agent_db_app_public.memories USING BTREE ( verified );

