-- Deploy: schemas/agentic_db_app_public/tables/ideas/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/documents/triggers/documents_search_tsv_tsv_update_tg


ALTER TABLE agentic_db_app_public.ideas 
  ADD COLUMN entity_id uuid;

