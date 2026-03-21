-- Deploy: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/memories/indexes/memories_agent_id_idx


CREATE INDEX skills_is_active_idx ON agentic_db_app_public.skills USING BTREE ( is_active );

