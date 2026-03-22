-- Deploy: schemas/agentic_db_app_public/tables/deal_chunks/columns/id/alterations/alt0000000994
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/company_chunks/triggers/company_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".deal_chunks 
  ALTER COLUMN id SET NOT NULL;

