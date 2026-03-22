-- Deploy: schemas/agentic_db_app_public/tables/rules/indexes/rules_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_logs/triggers/agent_logs_enqueue_embedding_update_tg


CREATE INDEX rules_entity_id_idx ON agentic_db_app_public.rules USING BTREE ( entity_id );

