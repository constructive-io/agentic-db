-- Deploy: schemas/agentic_db_app_public/tables/contact_links/columns/id/alterations/alt0000001060
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/triggers/interaction_chunks_enqueue_embedding_update_tg



ALTER TABLE "agentic_db_app_public".contact_links 
    ALTER COLUMN id SET DEFAULT uuidv7();

