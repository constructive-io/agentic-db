-- Deploy: schemas/agent_db_app_public/tables/notifications/indexes/notifications_type_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/notifications/columns/type/column
-- requires: schemas/agent_db_app_public/tables/list_items/indexes/list_items_position_idx


CREATE INDEX notifications_type_idx ON agent_db_app_public.notifications USING BTREE ( type );

