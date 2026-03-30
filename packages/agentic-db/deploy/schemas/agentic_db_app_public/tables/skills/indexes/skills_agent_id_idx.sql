-- Deploy: schemas/agentic_db_app_public/tables/skills/indexes/skills_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE INDEX skills_agent_id_idx ON "agentic_db_app_public".skills USING BTREE ( agent_id );

