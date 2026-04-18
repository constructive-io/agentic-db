-- Deploy: schemas/agentic_db_app_public/tables/deal_notes/columns/deal_id/alterations/alt0000001347
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_notes/table
-- requires: schemas/agentic_db_app_public/tables/deal_notes/columns/deal_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.deal_notes 
  ALTER COLUMN deal_id SET NOT NULL;

