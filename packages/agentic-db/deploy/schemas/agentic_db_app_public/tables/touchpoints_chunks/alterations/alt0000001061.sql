-- Deploy: schemas/agentic_db_app_public/tables/touchpoints_chunks/alterations/alt0000001061
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/table


COMMENT ON TABLE "agentic_db_app_public".touchpoints_chunks IS E'@@chunksOf {"parent_fk": "touchpoints_id", "parent_table": "touchpoints"}';

