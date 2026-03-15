-- Deploy: schemas/agent_db_app_public/tables/repositories/indexes/repositories_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/name/column
-- requires: schemas/agent_db_app_public/tables/agents/indexes/agents_name_gin_idx


CREATE INDEX repositories_name_gin_idx ON "agent_db_app_public".repositories USING gin ( name gin_trgm_ops );

