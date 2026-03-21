-- Deploy: schemas/agentic_db_app_public/tables/skills/indexes/skills_active_count_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/active_count/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


CREATE INDEX skills_active_count_idx ON "agentic_db_app_public".skills USING BTREE ( active_count );

