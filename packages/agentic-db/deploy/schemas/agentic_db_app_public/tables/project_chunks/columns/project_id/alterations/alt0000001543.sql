-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/columns/project_id/alterations/alt0000001543
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/project_chunks/columns/project_id/column
-- requires: schemas/agentic_db_app_public/tables/project_chunks/triggers/project_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".project_chunks 
  ALTER COLUMN project_id SET NOT NULL;

