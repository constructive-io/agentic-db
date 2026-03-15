-- Deploy: schemas/agent_db_app_public/tables/list_items/columns/list_id/alterations/alt0000001532
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/list_items/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/list_id/column
-- requires: schemas/agent_db_app_public/tables/list_items/columns/updated_at/alterations/alt0000001531


ALTER TABLE agent_db_app_public.list_items 
  ALTER COLUMN list_id SET NOT NULL;

