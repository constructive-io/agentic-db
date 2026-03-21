-- Deploy: schemas/agentic_db_app_public/tables/goals/indexes/goals_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_category_idx


CREATE INDEX goals_status_idx ON "agentic_db_app_public".goals USING BTREE ( status );

