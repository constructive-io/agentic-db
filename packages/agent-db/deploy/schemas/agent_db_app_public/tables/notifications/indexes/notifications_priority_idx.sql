-- Deploy: schemas/agent_db_app_public/tables/notifications/indexes/notifications_priority_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/notifications/columns/priority/column
-- requires: schemas/agent_db_app_public/tables/notifications/indexes/notifications_type_idx


CREATE INDEX notifications_priority_idx ON agent_db_app_public.notifications USING BTREE ( priority );

