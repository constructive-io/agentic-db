-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/entity_id/alterations/alt0000002969
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/entity_id/column


ALTER TABLE agentic_db_app_public.autonomy_record_links 
  ALTER COLUMN entity_id SET NOT NULL;

