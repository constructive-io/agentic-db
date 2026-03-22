-- Deploy: schemas/agentic_db_app_public/tables/goals/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/memories/triggers/memories_enqueue_embedding_update_tg


GRANT SELECT ON "agentic_db_app_public".goals TO authenticated;

