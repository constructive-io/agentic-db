-- Deploy: schemas/agentic_db_app_public/tables/goals/indexes/goals_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_tags_gin_idx


CREATE INDEX goals_tags_gin_idx ON agentic_db_app_public.goals USING GIN ( tags );

