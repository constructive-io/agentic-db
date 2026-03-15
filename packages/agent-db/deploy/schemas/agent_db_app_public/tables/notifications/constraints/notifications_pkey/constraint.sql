-- Deploy: schemas/agent_db_app_public/tables/notifications/constraints/notifications_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/ref_type/column


ALTER TABLE agent_db_app_public.notifications 
  ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);

