-- Deploy: schemas/agent_db_app_public/tables/skills/indexes/skills_active_count_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/active_count/column
-- requires: schemas/agent_db_app_public/tables/memories/indexes/memories_last_accessed_at_idx


CREATE INDEX skills_active_count_idx ON "agent_db_app_public".skills USING BTREE ( active_count );

