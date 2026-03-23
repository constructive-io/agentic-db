-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/alterations/alt0000001435
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


COMMENT ON TABLE "agentic_db_app_public".messages_chunks IS E'@@chunksOf {"parent_fk": "messages_id", "parent_table": "messages"}';

