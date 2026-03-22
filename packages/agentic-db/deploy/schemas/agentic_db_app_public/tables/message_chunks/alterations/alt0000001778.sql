-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/alterations/alt0000001778
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


COMMENT ON TABLE "agentic_db_app_public".message_chunks IS E'@@searchConfig {}';

