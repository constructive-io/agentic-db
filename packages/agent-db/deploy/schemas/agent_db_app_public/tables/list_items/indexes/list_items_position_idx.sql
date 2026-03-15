-- Deploy: schemas/agent_db_app_public/tables/list_items/indexes/list_items_position_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/list_items/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/position/column
-- requires: schemas/agent_db_app_public/tables/list_items/indexes/list_items_list_id_idx


CREATE INDEX list_items_position_idx ON agent_db_app_public.list_items USING BTREE ( position );

