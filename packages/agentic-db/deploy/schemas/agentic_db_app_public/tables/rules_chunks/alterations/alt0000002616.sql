-- Deploy: schemas/agentic_db_app_public/tables/rules_chunks/alterations/alt0000002616
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


COMMENT ON TABLE agentic_db_app_public.rules_chunks IS E'@@chunksOf {"parent_fk": "rules_id", "parent_table": "rules"}';

