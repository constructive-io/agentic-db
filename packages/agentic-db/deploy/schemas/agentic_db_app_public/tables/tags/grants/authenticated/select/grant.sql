-- Deploy: schemas/agentic_db_app_public/tables/tags/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/interactions/triggers/interactions_enqueue_embedding_update_tg


GRANT SELECT ON "agentic_db_app_public".tags TO authenticated;

