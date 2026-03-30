-- Deploy: schemas/agentic_db_app_public/tables/skills_chunks/alterations/alt0000001337
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


COMMENT ON TABLE "agentic_db_app_public".skills_chunks IS E'@@chunksOf {"parent_fk": "skills_id", "parent_table": "skills"}';

