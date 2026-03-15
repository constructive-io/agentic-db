-- Deploy: schemas/agent_db_app_public/tables/goals/indexes/goals_title_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/title/column
-- requires: schemas/agent_db_app_public/tables/skills/indexes/skills_name_gin_idx


CREATE INDEX goals_title_gin_idx ON agent_db_app_public.goals USING gin ( title gin_trgm_ops );

