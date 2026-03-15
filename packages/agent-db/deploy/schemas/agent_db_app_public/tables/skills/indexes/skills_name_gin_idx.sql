-- Deploy: schemas/agent_db_app_public/tables/skills/indexes/skills_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/name/column
-- requires: schemas/agent_db_app_public/tables/tasks/indexes/tasks_title_gin_idx


CREATE INDEX skills_name_gin_idx ON "agent_db_app_public".skills USING gin ( name gin_trgm_ops );

