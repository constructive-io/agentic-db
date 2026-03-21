-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/indexes/agent_prompts_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_rules/policies/auth_del_entity_membership/policy


CREATE INDEX agent_prompts_entity_id_idx ON agentic_db_app_public.agent_prompts USING BTREE ( entity_id );

