-- Deploy: schemas/agentic_db_app_public/tables/agent_logs_chunks/alterations/alt0000001289
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


COMMENT ON TABLE "agentic_db_app_public".agent_logs_chunks IS E'@@chunksOf {"parent_fk": "agent_logs_id", "parent_table": "agent_logs"}';

