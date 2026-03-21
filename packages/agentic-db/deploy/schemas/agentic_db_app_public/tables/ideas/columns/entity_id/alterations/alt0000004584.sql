-- Deploy: schemas/agentic_db_app_public/tables/ideas/columns/entity_id/alterations/alt0000004584
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/documents/triggers/documents_search_tsv_tsv_update_tg


ALTER TABLE agentic_db_app_public.ideas 
  ALTER COLUMN entity_id SET NOT NULL;

