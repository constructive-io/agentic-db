-- Deploy: schemas/agent_db_app_public/tables/blueprints/indexes/blueprints_title_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/title/column
-- requires: schemas/agent_db_app_public/tables/goals/indexes/goals_title_gin_idx


CREATE INDEX blueprints_title_gin_idx ON "agent_db_app_public".blueprints USING gin ( title gin_trgm_ops );

