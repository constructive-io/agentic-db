-- Deploy: schemas/agent_db_app_public/tables/list_items/columns/ref_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/list_items/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/ref_id/column


ALTER TABLE agent_db_app_public.list_items 
  ADD COLUMN ref_type text;

