-- Deploy: schemas/agentic_db_app_public/tables/agent_rules/indexes/agent_rules_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_rules/table
-- requires: schemas/agentic_db_app_public/tables/agent_rules/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_skills/policies/auth_del_entity_membership/policy


CREATE INDEX agent_rules_entity_id_idx ON agentic_db_app_public.agent_rules USING BTREE ( entity_id );

