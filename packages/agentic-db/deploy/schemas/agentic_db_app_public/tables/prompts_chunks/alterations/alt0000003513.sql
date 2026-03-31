-- Deploy: schemas/agentic_db_app_public/tables/prompts_chunks/alterations/alt0000003513
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


COMMENT ON TABLE agentic_db_app_public.prompts_chunks IS E'@@chunksOf {"parent_fk": "prompts_id", "parent_table": "prompts"}';

