-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/triggers/runtime_logs_enqueue_embedding_update_tg


GRANT DELETE ON agentic_db_app_public.runtime_artifacts TO authenticated;

