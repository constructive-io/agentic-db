-- Deploy: schemas/agentic_db_app_public/tables/agent_rules/indexes/agent_rules_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_rules/table
-- requires: schemas/agentic_db_app_public/tables/agent_rules/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_skills/indexes/agent_skills_skill_id_idx


CREATE INDEX agent_rules_agent_id_idx ON "agentic_db_app_public".agent_rules USING BTREE ( agent_id );

