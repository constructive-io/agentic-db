-- Deploy: schemas/agentic_db_app_public/tables/company_chunks/columns/entity_id/alterations/alt0000000983
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_chunks/table
-- requires: schemas/agentic_db_app_public/tables/company_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/triggers/contact_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".company_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

