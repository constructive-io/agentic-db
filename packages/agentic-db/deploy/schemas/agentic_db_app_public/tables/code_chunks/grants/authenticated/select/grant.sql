-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases/triggers/codebases_enqueue_embedding_update_tg


GRANT SELECT ON "agentic_db_app_public".code_chunks TO authenticated;

