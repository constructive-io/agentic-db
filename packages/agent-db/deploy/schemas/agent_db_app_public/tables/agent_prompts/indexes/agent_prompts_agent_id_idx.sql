-- Deploy: schemas/agent_db_app_public/tables/agent_prompts/indexes/agent_prompts_agent_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_prompts/table
-- requires: schemas/agent_db_app_public/tables/agent_prompts/columns/agent_id/column
-- requires: schemas/agent_db_app_public/tables/agent_rules/indexes/agent_rules_rule_id_idx


CREATE INDEX agent_prompts_agent_id_idx ON "agent_db_app_public".agent_prompts USING BTREE ( agent_id );

