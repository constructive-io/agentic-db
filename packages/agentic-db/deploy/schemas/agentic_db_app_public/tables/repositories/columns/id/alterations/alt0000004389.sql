-- Deploy: schemas/agentic_db_app_public/tables/repositories/columns/id/alterations/alt0000004389
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/projects/triggers/projects_search_tsv_tsv_update_tg


ALTER TABLE agentic_db_app_public.repositories 
  ALTER COLUMN id SET NOT NULL;

