-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/entity_id/alterations/alt0000001965
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/venues/triggers/venues_search_tsv_tsv_update_tg


ALTER TABLE "agentic_db_app_public".tasks 
  ALTER COLUMN entity_id SET NOT NULL;

