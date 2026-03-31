-- Deploy: schemas/agentic_db_app_public/tables/conversations/indexes/conversations_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


CREATE INDEX conversations_agent_id_idx ON "agentic_db_app_public".conversations USING BTREE ( agent_id );

