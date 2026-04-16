-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/indexes/thread_participants_email_thread_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/thread_participants/columns/email_thread_id/column
-- requires: schemas/agentic_db_app_public/tables/skill_tools/indexes/skill_tools_tool_definition_id_idx


CREATE INDEX thread_participants_email_thread_id_idx ON agentic_db_app_public.thread_participants USING BTREE ( email_thread_id );

