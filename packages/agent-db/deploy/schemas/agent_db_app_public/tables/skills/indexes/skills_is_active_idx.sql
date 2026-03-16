-- Deploy: schemas/agent_db_app_public/tables/skills/indexes/skills_is_active_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/is_active/column
-- requires: schemas/agent_db_app_public/tables/memories/indexes/memories_verified_idx


CREATE INDEX skills_is_active_idx ON "agent_db_app_public".skills USING BTREE ( is_active );

