-- Deploy: schemas/agentic_db_app_public/tables/expenses_chunks/alterations/alt0000001390
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


COMMENT ON TABLE "agentic_db_app_public".expenses_chunks IS E'@@chunksOf {"parent_fk": "expenses_id", "parent_table": "expenses"}';

