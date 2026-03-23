-- Deploy: schemas/agentic_db_app_public/tables/conversations_chunks/alterations/alt0000003122
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


COMMENT ON TABLE agentic_db_app_public.conversations_chunks IS E'@@chunksOf {"parent_fk": "conversations_id", "parent_table": "conversations"}';

