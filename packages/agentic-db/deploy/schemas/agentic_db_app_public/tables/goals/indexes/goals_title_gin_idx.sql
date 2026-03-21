-- Deploy: schemas/agentic_db_app_public/tables/goals/indexes/goals_title_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_name_gin_idx


CREATE INDEX goals_title_gin_idx ON agentic_db_app_public.goals USING gin ( title gin_trgm_ops );

