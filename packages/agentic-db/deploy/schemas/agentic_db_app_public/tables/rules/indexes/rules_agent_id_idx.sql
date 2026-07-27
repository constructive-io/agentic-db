-- Deploy: schemas/agentic_db_app_public/tables/rules/indexes/rules_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/agent_id/column


CREATE INDEX rules_agent_id_idx ON agentic_db_app_public.rules USING BTREE ( agent_id );

