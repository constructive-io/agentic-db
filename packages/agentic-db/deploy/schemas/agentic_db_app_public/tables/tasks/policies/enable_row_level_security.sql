-- Deploy: schemas/agentic_db_app_public/tables/tasks/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/venues/triggers/venues_search_tsv_tsv_update_tg


ALTER TABLE "agentic_db_app_public".tasks 
  ENABLE ROW LEVEL SECURITY;

