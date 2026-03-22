-- Deploy: schemas/agentic_db_app_public/tables/events/columns/entity_id/alterations/alt0000005577
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/deals/triggers/deals_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.events 
  ALTER COLUMN entity_id SET NOT NULL;

