-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/indexes/agent_chunks_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_tools/policies/auth_del_entity_membership/policy


CREATE INDEX agent_chunks_agent_id_idx ON "agentic_db_app_public".agent_chunks USING BTREE ( agent_id );

