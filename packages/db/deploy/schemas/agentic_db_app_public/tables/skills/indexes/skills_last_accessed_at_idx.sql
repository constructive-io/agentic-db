-- Deploy: schemas/agentic_db_app_public/tables/skills/indexes/skills_last_accessed_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/last_accessed_at/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_active_count_idx


CREATE INDEX skills_last_accessed_at_idx ON "agentic_db_app_public".skills USING BTREE ( last_accessed_at );

